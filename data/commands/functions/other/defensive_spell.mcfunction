execute at @s[team=Red] run effect clear @a[team=Red,distance=..10,scores={absHearts=..6}] absorption

execute at @s[team=Red,tag=!wrenched] run effect give @a[team=Red,distance=..10] absorption 10 0 true

execute at @s[team=Red,tag=!wrenched] run effect give @a[team=Red,distance=..10] resistance 10 0 true

execute at @s[team=Red,tag=wrenched] run effect give @a[team=Red,distance=..10] absorption 10 1 true

execute at @s[team=Red,tag=wrenched] run effect give @a[team=Red,distance=..10] resistance 6 1 true

execute at @s[team=Blue] run effect clear @a[team=Blue,distance=..10,scores={absHearts=..6}] absorption

execute at @s[team=Blue,tag=!wrenched] run effect give @a[team=Blue,distance=..10] absorption 10 0 true

execute at @s[team=Blue,tag=!wrenched] run effect give @a[team=Blue,distance=..10] resistance 10 0 true

execute at @s[team=Blue,tag=wrenched] run effect give @a[team=Blue,distance=..10] absorption 10 1 true

execute at @s[team=Blue,tag=wrenched] run effect give @a[team=Blue,distance=..10] resistance 6 1 true

execute at @s run playsound block.anvil.place master @a[distance=..15] ~ ~ ~ 0.3 1.5

execute at @s[team=Red,scores={Kit=4}] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities.defensive_spell master @a[distance=..15,team=Red] ~ ~ ~ 0.3 1

execute at @s[team=Red,scores={Kit=4}] if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities.defensive_spell master @a[distance=..15,team=Blue] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Red] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

scoreboard players set @s[scores={Kit=4}] HealerItems 500

scoreboard players set @s[scores={Kit=3}] defensiveSpell 400

tag @s remove wrenched
