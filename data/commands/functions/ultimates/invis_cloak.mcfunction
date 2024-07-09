effect give @s invisibility 10 0 true

function commands:attributes/adds/add_invis_cloak_atkdmg

function commands:attributes/adds/add_invis_cloak_speed

effect give @s resistance 10 1 true

execute at @s run particle smoke ~ ~ ~ 0.5 2 0.5 0 1000

tellraw @a [{"selector":"@s"},{"text":" has vanished!"}]

execute if entity @s[team=Red] run playsound royalsiege:ultimates.invis_cloak_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[team=Red] run playsound royalsiege:ultimates.invis_cloak_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.invis_cloak_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.invis_cloak_enemy master @a[team=Red] ~ ~ ~ 100 1

tag @s add cloaked

clear @s leather_chestplate

clear @s player_head

tag @s[predicate=commands:armor/bouncy_boots] add hasBouncyBoots

clear @s leather_boots

clear @s carrot_on_a_stick[custom_data~{inviscloak:1b}]

scoreboard players add @s ultsUsed 1

