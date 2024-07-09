execute if entity @s[team=Red] run tag @a[team=Red] add protected

execute if entity @s[team=Blue] run tag @a[team=Blue] add protected

tellraw @a [{"selector":"@s"},{"text":" shrouded their team in magical barriers!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{magicbarrier:1b}]