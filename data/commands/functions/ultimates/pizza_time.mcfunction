execute if entity @s[team=Red] run tag @e[type=zombified_piglin,tag=ovenred] add pizzatime

execute if entity @s[team=Blue] run tag @e[type=zombified_piglin,tag=ovenblue] add pizzatime

execute if entity @s[team=Red] run tellraw @a [{"selector":"@a[limit=1,team=Red,scores={Ultimate=22}]"},{"text":"'s ovens are overloaded!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@a[limit=1,team=Blue,scores={Ultimate=22}]"},{"text":"'s ovens are overloaded!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{pizzatime:1b}] 1