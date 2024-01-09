tag @s add rushing
scoreboard players set #hit ray.dRush 0
scoreboard players set #distance ray.dRush 0
scoreboard players set #hitentity ray.dRush 0
playsound entity.ender_dragon.flap master @a[distance=..10] ~ ~ ~ 1 1
execute as @a[tag=rushing] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/dragon_rush_ray
tag @s remove rushing