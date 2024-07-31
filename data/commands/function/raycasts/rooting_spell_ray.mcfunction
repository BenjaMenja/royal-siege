execute if score #hit ray.root matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @a[tag=!rooting,sort=nearest,team=Blue,distance=..4] if score #hit ray.root matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] at @s run function commands:raycasts/rooting_spell_hit_entity
execute if block ~ ~ ~ #commands:can_place_on_without_grass run scoreboard players set #distance ray.root 101
scoreboard players add #distance ray.root 1
particle dust{color:[0.220,0.620,0.051],scale:1} ~ ~ ~ 0 0 0 1 5 normal
execute if score #hit ray.root matches 0 if score #distance ray.root matches ..100 positioned ^ ^ ^0.1 run function commands:raycasts/rooting_spell_ray