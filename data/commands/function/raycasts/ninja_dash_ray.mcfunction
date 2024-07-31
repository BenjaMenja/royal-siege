execute if block ~ ~ ~ #commands:can_place_on_without_grass run function commands:raycasts/ninja_dash_hit_block
scoreboard players add #distance ray.dash 1
execute if score #distance ray.dash matches 50 run function commands:raycasts/ninja_dash_hit_block
execute if score #hit ray.dash matches 0 if score #distance ray.dash matches ..50 positioned ^ ^ ^0.1 run function commands:raycasts/ninja_dash_ray
