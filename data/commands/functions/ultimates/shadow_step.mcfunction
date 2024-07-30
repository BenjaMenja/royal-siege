tag @s add shadow

execute if entity @s[team=Red] run playsound royalsiege:ultimates.shadow_step_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[team=Red] run playsound royalsiege:ultimates.shadow_step_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.shadow_step_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.shadow_step_enemy master @a[team=Red] ~ ~ ~ 100 1

tellraw @a [{"selector":"@s"},{"text":" has melted into the shadows!"}]

function commands:attributes/adds/add_shadow_step_slow

function commands:attributes/adds/add_shadow_step_kb_resist

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{shadowstep:1b}]