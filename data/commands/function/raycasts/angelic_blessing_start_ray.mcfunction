tag @s add angelicblessing
scoreboard players set #hit ray.angelicBlessing 0
scoreboard players set #distance ray.angelicBlessing 0
function commands:raycasts/angelic_blessing_ray
scoreboard players set @a[tag=angelicblessing] angelicBlessingTimer 120
execute if score #distance ray.angelicBlessing matches 200.. run scoreboard players set @s angelicBlessingTimer 20
tag @s remove angelicblessing