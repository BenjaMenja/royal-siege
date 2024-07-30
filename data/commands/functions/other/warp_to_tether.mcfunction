execute if entity @s[team=Red] at @e[type=area_effect_cloud,limit=1,tag=redTether] run teleport @s ~ ~ ~

execute if entity @s[team=Blue] at @e[type=area_effect_cloud,limit=1,tag=blueTether] run teleport @s ~ ~ ~

execute if entity @s[team=Red] run kill @e[type=area_effect_cloud,tag=redTether]

execute if entity @s[team=Blue] run kill @e[type=area_effect_cloud,tag=blueTether]

clear @s carrot[custom_data~{safetytether:1b}]

tag @s remove tethered