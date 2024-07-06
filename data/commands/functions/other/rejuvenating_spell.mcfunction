execute if entity @s[team=Red] run effect give @a[team=Red,distance=..10] regeneration 3 4 true

execute if entity @s[team=Red] run effect give @a[team=Red,tag=blessed] regeneration 3 4 true

execute if entity @s[team=Red] as @a[team=Red,distance=..10] unless score @s Kit matches 4 run scoreboard players add #redHS healstreak 1

execute if entity @s[team=Red] as @a[team=Red,tag=blessed] unless score @s Kit matches 4 run scoreboard players add #redHS healstreak 1

execute if entity @s[team=Red] run playsound entity.player.levelup master @a[team=Red,distance=..10] ~ ~ ~ 0.3 2

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities.rejuvenating_spell master @a[team=Red,distance=..10] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Blue] run effect give @a[team=Blue,distance=..10] regeneration 3 4 true

execute if entity @s[team=Blue] run effect give @a[team=Blue,tag=blessed] regeneration 3 4 true

execute if entity @s[team=Blue] as @a[team=Blue,distance=..10] unless score @s Kit matches 4 run scoreboard players add #blueHS healstreak 1

execute if entity @s[team=Blue] as @a[team=Blue,tag=blessed] unless score @s Kit matches 4 run scoreboard players add #blueHS healstreak 1

execute if entity @s[team=Blue] run playsound entity.player.levelup master @a[team=Blue,distance=..15] ~ ~ ~ 0.3 2

execute if entity @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities.rejuvenating_spell master @a[team=Blue,distance=..10] ~ ~ ~ 0.3 1

execute if entity @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

clear @s carrot_on_a_stick[custom_data~{rejuvenatingspell:1b}]