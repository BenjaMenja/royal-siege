execute if entity @s[team=Red] at @s run playsound royalsiege:ultimates.rally_friendly master @a[team=Red] ~ ~ ~ 100 0.95

execute if entity @s[team=Red] at @s run playsound royalsiege:ultimates.rally_enemy master @a[team=Blue] ~ ~ ~ 100 0.95

execute if entity @s[team=Blue] at @s run playsound royalsiege:ultimates.rally_friendly master @a[team=Blue] ~ ~ ~ 100 0.95

execute if entity @s[team=Blue] at @s run playsound royalsiege:ultimates.rally_enemy master @a[team=Red] ~ ~ ~ 100 0.95

tellraw @a [{"selector":"@s"},{"text":" is rallying his team together!","color":"white"}]

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{rally:1b}]