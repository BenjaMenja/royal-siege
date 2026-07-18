tag @s add rooting
scoreboard players set #hit ray.root 0
scoreboard players set #distance ray.root 0
function commands:raycasts/rooting_spell_ray
scoreboard players set @s rootingTimer 440
tag @s remove wrenched
tag @s remove rooting