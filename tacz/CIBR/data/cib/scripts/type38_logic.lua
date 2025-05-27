local M = {}

function M.shoot(api)
    api:shootOnce(api:isShootingNeedConsumeAmmo())
end

function M.start_bolt(api)
    return true
end

function M.tick_bolt(api)
    local params = api:getScriptParams()
    local total_bolt_time = params.bolt_time * 1000
    local bolt_feed_time = params.bolt_feed_time * 1000
    if (total_bolt_time == nil or bolt_feed_time == nil) then
        return false
    end
    local bolt_time = api:getBoltTime()
    if (bolt_time < bolt_feed_time) then
        return true
    else
        if (not api:hasAmmoInBarrel()) then
            if (api:removeAmmoFromMagazine(1) ~= 0) then
                api:setAmmoInBarrel(true);
            end
        end
        return bolt_time < total_bolt_time
    end
end

function M.start_reload(api)
    local cache = {
        reloaded_count = 0,
        needed_count = api:getNeededAmmoAmount(),
        is_tactical = api:getReloadStateType() == TACTICAL_RELOAD_FEEDING,
        interrupted_time = -1,
        loaded = false
    }
    cache.loaded = false
    api:cacheScriptData(cache)
    return true
end

local function getReloadTimingFromParam(param)
    local reload_intro = param.reload_intro * 1000
    local reload_loop = param.reload_loop * 1000
    local reload_loop_feed = param.reload_loop_feed * 1000
    local reload_end = param.reload_end * 1000
    local reload_end_feed = param.reload_end_feed * 1000
    local reload_empty = param.reload_empty * 1000
    local reload_empty_feed = param.reload_empty_feed * 1000
    if (reload_intro == nil or reload_loop == nil or reload_loop_feed == nil or reload_end == nil or reload_end_feed == nil or reload_empty == nil or reload_empty_feed == nil) then
        return nil
    end
    return reload_intro, reload_loop, reload_loop_feed, reload_end, reload_end_feed, reload_empty, reload_empty_feed
end

function M.tick_reload(api)
    local param = api:getScriptParams();
    local reload_intro, reload_loop, reload_loop_feed, reload_end, reload_end_feed, reload_empty, reload_empty_feed = getReloadTimingFromParam(param)
    local reload_time = api:getReloadTime()
    local cache = api:getCachedScriptData()
    local interrupted_time = cache.interrupted_time
    if (not cache.is_tactical) then
        -- 空枪
        if (reload_time < reload_empty_feed) then
            return EMPTY_RELOAD_FEEDING, reload_empty_feed - reload_time
        elseif (reload_time >= reload_empty_feed and reload_time <= reload_empty) then
            if (not cache.loaded) then
                if (api:isReloadingNeedConsumeAmmo()) then
                    api:putAmmoInMagazine(api:consumeAmmoFromPlayer(api:getNeededAmmoAmount() + 1) - 1)
                else
                    api:putAmmoInMagazine(api:getNeededAmmoAmount())
                end
                api:setAmmoInBarrel(true)
                cache.loaded = true
                api:cacheScriptData(cache)
            end
            return EMPTY_RELOAD_FINISHING, reload_empty - reload_time
        elseif (reload_time > reload_empty) then
            return NOT_RELOADING, -1
        end
    else
        -- 战术
        if (interrupted_time ~= -1) then
            local int_time = reload_time - interrupted_time
            if (int_time >= reload_end) then
                return NOT_RELOADING, -1
            else
                if (cache.is_tactical) then
                     return TACTICAL_RELOAD_FINISHING, reload_end - int_time
                else
                    return EMPTY_RELOAD_FINISHING, reload_end - int_time
                end
            end
        else
            if (not api:hasAmmoToConsume()) then
                interrupted_time = api:getReloadTime()
            end
        end
        local reloaded_count = cache.reloaded_count;
        if (reloaded_count >= 0) then
            local base_time = reloaded_count * reload_loop + reload_loop_feed
            base_time = base_time + reload_intro
            while (base_time < reload_time) do
                if (reloaded_count >= cache.needed_count) then
                    break
                end
                reloaded_count = reloaded_count + 1
                base_time = base_time + reload_loop
                api:consumeAmmoFromPlayer(1)
                api:putAmmoInMagazine(1)
            end
        end
        -- 写回缓存
        if (reloaded_count >= cache.needed_count) then
            interrupted_time = api:getReloadTime() - reload_loop_feed + reload_loop
        end
        cache.interrupted_time = interrupted_time
        cache.reloaded_count = reloaded_count
        api:cacheScriptData(cache)
        local total_time = cache.needed_count * reload_loop
        total_time = total_time + reload_intro
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