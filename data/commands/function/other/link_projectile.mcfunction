execute as @e[type=ender_pearl,limit=1,tag=!found] run function commands:other/projectile_get_uuid

execute if score @e[type=ender_pearl,limit=1,tag=!found] UUID = @s UUID run tag @s add warping

tag @e[type=ender_pearl,limit=1,tag=!found] add found