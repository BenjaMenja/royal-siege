tag @s add angelicblessing
scoreboard players set #hit rayVar 0
scoreboard players set #distance rayVar 0
function commands:raycasts/angelic_blessing_ray
scoreboard players set @a[tag=angelicblessing] angelicBlessingTimer 120
execute if score #distance rayVar matches 200.. run scoreboard players set @s angelicBlessingTimer 20
tag @s remove angelicblessing