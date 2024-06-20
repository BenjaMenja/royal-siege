attribute @s minecraft:generic.gravity modifier add 13-1-500-8-0 "SeismicSlamDownGravity" 5 add_multiplied_base

attribute @s minecraft:generic.safe_fall_distance modifier add 14-0-100-9-0 "SeismicSlamFallDist" 100 add_value

scoreboard players set @s RSAttr.SeismicSlamDownGravity 0

tag @s add slamming