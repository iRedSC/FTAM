local M = {}

function M.shoot(api)
    api:shootOnce(api:isShootingNeedConsumeAmmo())
end

function M.start_bolt(api)
    -- Return true to start ticking, since there are nothing needed to be check
    return true
end

function M.tick_bolt(api)
    -- Get total bolt time from script parameter in gun data
    local params = api:getScriptParams()
    local total_bolt_time = params.bolt_time * 1000
    local bolt_feed_time = params.bolt_feed_time * 1000
    if (total_bolt_time == nil or bolt_feed_time == nil) then
        return false
    end
    local bolt_time = api:getBoltTime()
    if (bolt_time < bolt_feed_time) then
        -- Bolt time less than total means we need to keep ticking, return true
        return true
    else
        -- Bolt time greater than total means that the bullet
        -- needs to be put from the magazine into the barrel, and then return false to end ticking.
        if (not api:hasAmmoInBarrel()) then
            if (api:removeAmmoFromMagazine(1) ~= 0) then
                api:setAmmoInBarrel(true);
            end
        end
        return bolt_time < total_bolt_time
    end
end

function M.start_reload(api)
    -- Initialize cache that will be used in reload ticking
    local cache = {
        reloaded_count = 0,
        empty_end_feed = 0,
        needed_count = api:getNeededAmmoAmount(),
        is_tactical = api:getReloadStateType() == TACTICAL_RELOAD_FEEDING,
        interrupted_time = -1,
    }
    api:cacheScriptData(cache)
    -- Return true to start ticking
    return true
end

local function getReloadTimingFromParam(param)
    -- Need to convert time from seconds to milliseconds
    local intro = param.intro * 1000
    local loop = param.loop * 1000
    local ending = param.ending * 1000
    local ending_empty = param.ending_empty * 1000
    local ending_empty_feed = param.ending_empty_feed * 1000
    local loop_feed = param.loop_feed * 1000
    -- Check if any timing is nil
    if (intro == nil or loop == nil or ending == nil or ending_empty == nil or ending_empty_feed == nil or loop_feed == nil) then
        return nil
    end
    return intro, loop, ending, ending_empty, ending_empty_feed, loop_feed
end

function M.tick_reload(api)
    -- Get all timings from script parameter in gun data
    local param = api:getScriptParams();
    local intro, loop, ending, ending_empty, ending_empty_feed, loop_feed = getReloadTimingFromParam(param)
    if (intro == nil) then
        return NOT_RELOADING, -1
    end
    -- Get reload time (The time from the start of reloading to the current time) from api
    local reload_time = api:getReloadTime()
    -- Get cache from api, it will be used to count loaded ammo, mark reload interruptions, etc.
    local cache = api:getCachedScriptData()
    local empty_end_feed = cache.empty_end_feed
    local interrupted_time = cache.interrupted_time
    -- Handle interrupting reload
    if (interrupted_time ~= -1) then
        local int_time = reload_time - interrupted_time
        if (cache.is_tactical) then
            if (int_time >= ending) then
                return NOT_RELOADING, -1
            else
                return TACTICAL_RELOAD_FINISHING, ending - int_time
            end
        else
            if (int_time < ending_empty_feed) then
                return EMPTY_RELOAD_FINISHING, ending_empty_feed - int_time
            elseif (int_time > ending_empty_feed and int_time < ending_empty) then
                if (empty_end_feed == 0) then
                    api:setAmmoInBarrel(true)
                    api:removeAmmoFromMagazine(1)
                    cache.empty_end_feed = 1
                end
                return EMPTY_RELOAD_FINISHING, ending_empty - int_time
            else
                return NOT_RELOADING, -1
            end
        end
    else
        -- if there is no ammo to consume, interrupt reloading
        if (not api:hasAmmoToConsume()) then
            interrupted_time = api:getReloadTime()
        end
    end
    -- Put an ammo into the barrel first
    local reloaded_count = cache.reloaded_count;
    if (reloaded_count == 0) then
        cache.empty_end_feed = 0
        reloaded_count = reloaded_count + 1
    end
    -- Load the ammo into the magazine one by one
    if (reloaded_count > 0) then
        local base_time = (reloaded_count -1) * loop + loop_feed
        base_time = base_time + intro
        while (base_time < reload_time) do
            if (reloaded_count > cache.needed_count) then
                break
            end
            reloaded_count = reloaded_count + 1
            base_time = base_time + loop
            if (api:isReloadingNeedConsumeAmmo()) then
                api:consumeAmmoFromPlayer(1)
            end
            api:putAmmoInMagazine(1)
        end
    end
    -- Write back cache
    if (reloaded_count > cache.needed_count) then
        interrupted_time = api:getReloadTime() - loop_feed + loop
    end
    cache.interrupted_time = interrupted_time
    cache.reloaded_count = reloaded_count
    api:cacheScriptData(cache)
    -- return reloadstate
    local total_time = cache.needed_count * loop
    if (not cache.is_tactical) then
        total_time = total_time + intro
        return EMPTY_RELOAD_FEEDING, total_time - reload_time
    else
        total_time = total_time + intro
        return TACTICAL_RELOAD_FEEDING, total_time - reload_time
    end
end

function M.interrupt_reload(api)
    local cache = api:getCachedScriptData()
    if (cache ~= nil and cache.interrupted_time == -1) then
        cache.interrupted_time = api:getReloadTime()
    end
end

return M