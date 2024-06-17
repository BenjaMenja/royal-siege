execute if entity @s[team=Red] run effect give @a[team=Red,distance=..10] absorption 8 2 true

execute if entity @s[team=Red] run playsound entity.slime.squish master @a[team=Red,distance=..10] ~ ~ ~ 0.5 1

execute if entity @s[team=Red] run playsound royalsiege:abilities.shielding_spell master @a[team=Red,distance=..10] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Blue] run effect give @a[team=Blue,distance=..10] absorption 8 2 true

execute if entity @s[team=Blue] run playsound entity.slime.squish master @a[team=Blue,distance=..10] ~ ~ ~ 0.3 1

execute if entity @s[team=Blue] run playsound royalsiege:abilities.shielding_spell master @a[team=Blue,distance=..10] ~ ~ ~ 0.3 1

execute if entity @e[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

clear @s carrot_on_a_stick[custom_data~{shieldingspell:1b}]