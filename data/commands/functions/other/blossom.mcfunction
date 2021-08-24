execute at @s[team=Red] run effect give @a[distance=..15,team=Red] instant_health 1 0 true

execute at @s[team=Red] run effect give @a[distance=..15,team=Red] regeneration 8 1 true

execute at @s[team=Red] run effect give @a[distance=..15,team=Red] speed 8 0 true

execute at @s[team=Red,tag=upgraded] run effect give @a[distance=..15,team=Red] instant_health 1 0 true

execute at @s[team=Red,tag=upgraded] run effect give @a[distance=..15,team=Red] regeneration 12 1 true

execute at @s[team=Red,tag=upgraded] run effect give @a[distance=..15,team=Red] speed 10 1 true

execute at @s[team=Red] at @a[distance=..15,team=Red] run particle happy_villager ~ ~2 ~ 0 0 0 1 15 normal

execute at @s[team=Red] run playsound block.grass.break master @a[distance=..15,team=Red] ~ ~ ~ 1 0

execute at @s[team=Red] if score #entvoicered voicelineCD matches 40.. run playsound royalsiege:abilities.blossom master @a[distance=..15] ~ ~ ~ 1 

execute at @s[team=Red] if score #entvoicered voicelineCD matches 40.. run scoreboard players reset #entvoicered voicelineCD

execute at @s[team=Blue] run effect give @a[distance=..15,team=Blue] instant_health 1 0 true

execute at @s[team=Blue] run effect give @a[distance=..15,team=Blue] regeneration 8 1 true

execute at @s[team=Blue] run effect give @a[distance=..15,team=Blue] speed 8 0 true

execute at @s[team=Blue,tag=upgraded] run effect give @a[distance=..15,team=Blue] instant_health 1 0 true

execute at @s[team=Blue,tag=upgraded] run effect give @a[distance=..15,team=Blue] regeneration 12 1 true

execute at @s[team=Blue,tag=upgraded] run effect give @a[distance=..15,team=Blue] speed 10 1 true

execute at @s[team=Blue] at @a[distance=..15,team=Blue] run particle happy_villager ~ ~2 ~ 0 0 0 1 15 normal

execute at @s[team=Blue] run playsound block.grass.break master @a[distance=..15,team=Blue] ~ ~ ~ 1 0

execute at @s[team=Blue] if score #entvoiceblue voicelineCD matches 40.. run playsound royalsiege:abilities.blossom master @a[distance=..15] ~ ~ ~ 1 1

execute at @s[team=Blue] if score #entvoiceblue voicelineCD matches 40.. run scoreboard players reset #entvoiceblue voicelineCD

clear @s carrot_on_a_stick{blossom:1b}