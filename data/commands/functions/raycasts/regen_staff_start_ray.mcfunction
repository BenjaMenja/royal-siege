tag @s[team=Red] add regen.red
tag @s[team=Blue] add regen.blue
tag @s add regen
scoreboard players set #hit ray.regen 0
scoreboard players set #distance ray.regen 0
function commands:raycasts/regen_staff_ray
scoreboard players set @a[tag=regen] RegenTimer 120
execute if score #distance ray.regen matches 200.. run scoreboard players set @s RegenTimer 40
execute if score #hit ray.regen matches 1 if entity @s[team=Red] run scoreboard players add #redHS healstreak 1
execute if score #hit ray.regen matches 1 if entity @s[team=Blue] run scoreboard players add #blueHS healstreak 1
tag @s remove regen.red
tag @s remove regen.blue
tag @s remove regen
tag @s remove regenstaff