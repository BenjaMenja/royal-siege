tag @s add shadow

execute if entity @s[team=Red] run playsound royalsiege:ultimates.shadow_step_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[team=Red] run playsound royalsiege:ultimates.shadow_step_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.shadow_step_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.shadow_step_enemy master @a[team=Red] ~ ~ ~ 100 1

tellraw @a [{"selector":"@s"},{"text":" has melted into the shadows!"}]

loot replace entity @s armor.chest loot commands:main_armor/ninja_shadow_step_chestplate

clear @s carrot_on_a_stick[custom_data~{shadowstep:1b}]