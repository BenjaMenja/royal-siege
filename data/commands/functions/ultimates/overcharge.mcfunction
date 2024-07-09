execute if entity @s[team=Red] run function commands:entities/wizard_minion_red
execute if entity @s[team=Red] run function commands:entities/wizard_minion_red
execute if entity @s[team=Red] run function commands:entities/wizard_minion_red

execute if entity @s[team=Blue] run function commands:entities/wizard_minion_blue
execute if entity @s[team=Blue] run function commands:entities/wizard_minion_blue
execute if entity @s[team=Blue] run function commands:entities/wizard_minion_blue

execute as @s[team=Red] run tag @e[type=zombie,tag=WM,team=Red] add overcharge

execute as @s[team=Blue] run tag @e[type=zombie,tag=WM,team=Blue] add overcharge

execute at @s run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 0

tellraw @a [{"selector":"@s"},{"text":"'s minions are pulsing with energy!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{overcharge:1b}]
