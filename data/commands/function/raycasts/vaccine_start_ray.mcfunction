tag @s add vaccineUser
scoreboard players set #hit rayVar 0
scoreboard players set #distance rayVar 0
scoreboard players set #hitentity rayVar 0
execute as @a[tag=vaccineUser] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/vaccine_ray
tag @s remove vaccineUser