attribute @s minecraft:generic.gravity modifier add 13-1-500-8-0 "SeismicSlamDownGravity" 5 add_multiplied_base

scoreboard players set @s RSAttr.SafeFallDist 2147483647

function commands:attributes/adds/add_safe_fall_dist

scoreboard players set @s RSAttr.SeismicSlamDownGravity 0

execute unless score @s Message matches 1 run tag @s add slamming