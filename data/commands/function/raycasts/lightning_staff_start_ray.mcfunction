tag @s add lightning
scoreboard players set #hit ray.lightning 0
scoreboard players set #distance ray.lightning 0
function commands:raycasts/lightning_staff_ray
scoreboard players remove @a[tag=lightning] LightningTimer 120
tag @s remove lightning