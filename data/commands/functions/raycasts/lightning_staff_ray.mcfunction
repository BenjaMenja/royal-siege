execute if score #hit ray.lightning matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!lightning,sort=nearest,distance=..4,gamemode=!spectator] if score #hit ray.lightning matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/lightning_staff_hit_entity
scoreboard players add #distance ray.lightning 1
execute if block ~ ~ ~ #commands:can_place_on_without_grass run scoreboard players set #distance ray.lightning 120
particle dust 0.000 1.000 1.000 1 ~ ~ ~ 0 0 0 1 5 normal
execute if score #hit ray.lightning matches 0 if score #distance ray.lightning matches 120 positioned ~ ~ ~ run function commands:raycasts/lightning_staff_hit_block
execute if score #hit ray.lightning matches 0 if score #distance ray.lightning matches ..120 positioned ^ ^ ^0.1 run function commands:raycasts/lightning_staff_ray