execute if entity @s[team=Red] if score #hit ray.regen matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!regen.red,sort=nearest,team=Red,distance=..5] if score #hit ray.regen matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/regen_staff_red_hit_entity
execute if entity @s[team=Blue] if score #hit ray.regen matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!regen.blue,sort=nearest,team=Blue,distance=..5] if score #hit ray.regen matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/regen_staff_blue_hit_entity
execute if block ~ ~ ~ #commands:can_place_on_without_grass run scoreboard players set #distance ray.regen 201
scoreboard players add #distance ray.regen 1
particle dust{color:[0.133,1.000,0.000],scale:1} ~ ~ ~ 0 0 0 1 5 normal
execute if score #hit ray.regen matches 0 if score #distance ray.regen matches ..200 positioned ^ ^ ^0.1 run function commands:raycasts/regen_staff_ray