execute as @a[predicate=ftam:medical_armor,predicate=!ftam:has_rescue_cooldown] run effect give @s lrarmor:rescue infinite 1
execute as @a[predicate=ftam:medical_armor,predicate=!ftam:has_rescue_cooldown,predicate=ftam:sneaking] run effect give @s minecraft:regeneration infinite 0

execute as @a run attribute @s tacz:tacz.bullet_resistance base set 0.5
execute as @a run attribute @s forge:nametag_distance base set 25