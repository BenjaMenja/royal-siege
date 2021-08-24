tag @s add lightning
scoreboard players set #hit ray.lightning 0
scoreboard players set #distance ray.lightning 0
function commands:raycasts/lightning_staff_ray
scoreboard players remove @a[tag=lightning] LightningTimer 80
execute if score @s LightningTimer matches ..80 run function commands:replace/lightning_staff_replace
tag @s remove lightning