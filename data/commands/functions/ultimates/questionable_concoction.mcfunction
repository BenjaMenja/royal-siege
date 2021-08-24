execute at @s[tag=concoctionred] run effect give @e[type=wither_skeleton,tag=King,team=Red,distance=..10] instant_damage 1 4 true

execute at @s[tag=concoctionred] run effect give @e[type=wither_skeleton,tag=King,team=Blue,distance=..10] instant_health 1 4 true
 
execute at @s[tag=concoctionblue] run effect give @e[type=wither_skeleton,tag=King,team=Blue,distance=..10] instant_damage 1 4 true

execute at @s[tag=concoctionblue] run effect give @e[type=wither_skeleton,tag=King,team=Red,distance=..10] instant_health 1 4 true

execute at @s[tag=concoctionred] run effect clear @a[team=Blue,distance=..10] absorption

execute at @s[tag=concoctionred] run effect clear @a[team=Blue,distance=..10] regeneration

execute at @s[tag=concoctionred] run effect clear @a[team=Blue,distance=..10] health_boost

execute at @s[tag=concoctionred] run effect give @a[team=Blue,distance=..10] poison 8 1 true

execute at @s[tag=concoctionblue] run effect clear @a[team=Red,distance=..10] absorption

execute at @s[tag=concoctionblue] run effect clear @a[team=Red,distance=..10] regeneration

execute at @s[tag=concoctionblue] run effect clear @a[team=Red,distance=..10] health_boost

execute at @s[tag=concoctionblue] run effect give @a[team=Red,distance=..10] poison 8 1 true

execute at @s[tag=concoctionred] run playsound royalsiege:ultimates.questionable_concoction_friendly master @a[team=Red] ~ ~ ~ 50 1

execute at @s[tag=concoctionred] run playsound royalsiege:ultimates.questionable_concoction_enemy master @a[team=Blue] ~ ~ ~ 50 1

execute at @s[tag=concoctionblue] run playsound royalsiege:ultimates.questionable_concoction_friendly master @a[team=Blue] ~ ~ ~ 50 1

execute at @s[tag=concoctionblue] run playsound royalsiege:ultimates.questionable_concoction_enemy master @a[team=Red] ~ ~ ~ 50 1

execute if entity @s[tag=concoctionred] run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[tag=concoctionblue] run scoreboard players reset #angelspellsblue voicelineCD

execute if entity @s[tag=concoctionred] run tellraw @a [{"selector":"@a[scores={Ultimate=14},team=Red]"},{"text":" spilled their Questionable Concoction!"}]

execute if entity @s[tag=concoctionblue] run tellraw @a [{"selector":"@a[scores={Ultimate=14},team=Blue]"},{"text":" spilled their Questionable Concoction!"}]