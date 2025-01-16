tag @s add necroStaffUser
scoreboard players set #hit rayVar 0
scoreboard players set #distance rayVar 0
scoreboard players set #hitentity rayVar 0
execute as @a[tag=necroStaffUser] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/necro_staff_ray
execute if score #hit rayVar matches 0 run scoreboard players set @s necroStaffTimer 60
tag @s remove necroStaffUser