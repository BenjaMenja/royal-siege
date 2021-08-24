execute if entity @s[team=Red] run tag @e[type=zombified_piglin,tag=ovenred] add pizzatime

execute if entity @s[team=Blue] run tag @e[type=zombified_piglin,tag=ovenblue] add pizzatime

execute if entity @s[team=Red] run tellraw @a [{"selector":"@a[limit=1,team=Red,scores={Ultimate=22}]"},{"text":"'s ovens are overloaded!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@a[limit=1,team=Blue,scores={Ultimate=22}]"},{"text":"'s ovens are overloaded!"}]

clear @s carrot_on_a_stick{pizzatime:1b} 1