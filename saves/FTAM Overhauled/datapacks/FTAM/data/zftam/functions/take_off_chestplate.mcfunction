summon item ~ ~ ~ {PickupDelay:1,Invulnerable:1b,Tags:["remove_chestplate"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=remove_chestplate,limit=1,sort=nearest] Owner set from entity @s UUID
data modify entity @e[tag=remove_chestplate,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:102b}]
item replace entity @s armor.chest with air
tellraw @s {"text":"[Warning] Jetpacks aren't allowed here.","color":"dark_red"}