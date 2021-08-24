tag @s add LOSsearch
scoreboard players set #hit ray.LOS 0
scoreboard players set #distance ray.LOS 0
function commands:raycasts/line_of_sight_ray
tag @s remove LOSsearch