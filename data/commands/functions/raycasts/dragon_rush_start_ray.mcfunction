tag @s add rushing
scoreboard players set #hit ray.dRush 0
scoreboard players set #distance ray.dRush 0
scoreboard players set #hitentity ray.dRush 0
execute as @a[tag=rushing] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/dragon_rush_ray
function commands:replace/dragon_rush_replace
tag @s remove rushing
tag @s remove dRushTemp