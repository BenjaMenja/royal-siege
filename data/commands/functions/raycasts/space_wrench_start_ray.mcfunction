tag @s add wrenchUser
scoreboard players set #hit ray.wrench 0
scoreboard players set #distance ray.wrench 0
scoreboard players set #hitentity ray.wrench 0
execute as @a[tag=wrenchUser] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/space_wrench_ray
tag @s remove wrenchUser