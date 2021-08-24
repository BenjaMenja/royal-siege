execute if score #hit ray.payRaise matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!payraise,sort=nearest,team=Red,distance=..4] if score #hit ray.payRaise matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/pay_raise_hit_entity
execute if block ~ ~ ~ #commands:can_place_on_without_grass run scoreboard players set #distance ray.payRaise 151
scoreboard players add #distance ray.payRaise 1
particle dust 1.000 0.722 0.169 1 ~ ~ ~ 0 0 0 1 0 normal
execute if score #hit ray.payRaise matches 0 if score #distance ray.payRaise matches ..150 positioned ^ ^ ^0.1 run function commands:raycasts/pay_raise_red_ray