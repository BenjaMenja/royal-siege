execute at @s[team=Red] run effect give @a[team=Red,distance=..10] speed 10 0 true

execute at @s[team=Red] as @a[team=Red,distance=..10] unless score @s Kit matches 4 run effect give @s strength 10 0 true

execute at @s[team=Blue] as @a[team=Blue,distance=..10] unless score @s Kit matches 4 run effect give @s strength 10 0 true

execute at @s[team=Blue] run effect give @a[team=Blue,distance=..10] speed 10 0 true

execute at @s run playsound entity.wither.hurt master @a[distance=..15] ~ ~ ~ 0.3 1.5

execute at @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities.assault_spell master @a[distance=..15,team=Red] ~ ~ ~ 0.3 1

execute at @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities.assault_spell master @a[distance=..15,team=Blue] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

clear @s[scores={Kit=4}] carrot_on_a_stick{DefensiveSpell:1b}

clear @s[scores={Kit=4}] carrot_on_a_stick{AssaultSpell:1b}