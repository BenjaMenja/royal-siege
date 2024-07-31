execute if entity @s[tag=ovenred] if score #hit ray.LOS matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[team=Blue,tag=!LOSsearch,sort=nearest,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function commands:raycasts/line_of_sight_hit_entity
execute if entity @s[tag=ovenblue] if score #hit ray.LOS matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[team=Red,tag=!LOSsearch,sort=nearest,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function commands:raycasts/line_of_sight_hit_entity
execute if entity @s[tag=smartDroneRed] if score #hit ray.LOS matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[team=Blue,tag=!LOSsearch,sort=nearest,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function commands:raycasts/line_of_sight_hit_entity
execute if entity @s[tag=smartDroneBlue] if score #hit ray.LOS matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[team=Red,tag=!LOSsearch,sort=nearest,dx=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function commands:raycasts/line_of_sight_hit_entity
scoreboard players add #distance ray.LOS 1
execute if block ~ ~ ~ #commands:can_place_on_without_grass run scoreboard players set #distance ray.LOS 1001
execute if score #hit ray.LOS matches 0 if score #distance ray.LOS matches ..1000 positioned ^ ^ ^0.1 run function commands:raycasts/line_of_sight_ray