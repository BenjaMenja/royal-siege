execute at @s[team=Red] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_vigor_spell_atkdmg

execute at @s[team=Red] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_vigor_spell_speed

execute at @s[team=Red] run effect give @a[team=Red,distance=..10] jump_boost 20 0 true

execute at @s[team=Red] run effect give @a[team=Red,distance=..10] fire_resistance 20 0 true

execute at @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run playsound block.anvil.use master @a[team=Red,distance=..15] ~ ~ ~ 0.3 2

execute at @s[team=Red] run playsound royalsiege:abilities.vigor_spell master @a[team=Red,distance=..10] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Red] at @a[team=Red,distance=..10] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 10 normal

execute at @s[team=Blue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_vigor_spell_atkdmg

execute at @s[team=Blue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_vigor_spell_speed

execute at @s[team=Blue] run effect give @a[team=Blue,distance=..10] jump_boost 20 0 true

execute at @s[team=Blue] run effect give @a[team=Blue,distance=..10] fire_resistance 20 0 true

execute at @s[team=Blue] run playsound block.anvil.use master @a[team=Blue,distance=..15] ~ ~ ~ 1 2

execute if entity @s[team=Blue] at @a[team=Blue,distance=..10] run particle dust 0.000 0.000 1.000 1 ~ ~ ~ 0 0 0 1 10 normal

execute at @s[team=Blue] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities.vigor_spell master @a[team=Blue,distance=..10] ~ ~ ~ 0.3 1

execute if entity @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

clear @s carrot_on_a_stick{vigorspell:1b}