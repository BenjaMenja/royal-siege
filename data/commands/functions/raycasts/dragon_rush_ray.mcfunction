execute if block ~ ~ ~ #commands:can_place_on_without_grass run function commands:raycasts/dragon_rush_hit_block
execute if entity @s[team=Red] if score #hit ray.dRush matches 0 unless score #hitentity ray.dRush matches 1 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!rushing,sort=nearest,distance=..4,team=Blue] if score #hit ray.dRush matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/dragon_rush_hit_entity
execute if entity @s[team=Blue] if score #hit ray.dRush matches 0 unless score #hitentity ray.dRush matches 1 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!rushing,sort=nearest,distance=..4,team=Red] if score #hit ray.dRush matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/dragon_rush_hit_entity
scoreboard players add #distance ray.dRush 1
execute if score #distance ray.dRush matches 100 run function commands:raycasts/dragon_rush_hit_block
execute if score #hit ray.dRush matches 0 if score #distance ray.dRush matches ..100 positioned ^ ^ ^0.1 run function commands:raycasts/dragon_rush_ray
