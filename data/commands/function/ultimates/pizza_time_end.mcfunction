execute if entity @s[tag=ovenred] run tag @e[type=zombified_piglin,tag=ovenred] remove pizzatime

execute if entity @s[tag=ovenblue] run tag @e[type=zombified_piglin,tag=ovenblue] remove pizzatime

execute if entity @s[tag=ovenred] run scoreboard players reset @e[type=zombified_piglin,tag=ovenred] pizzaTimer

execute if entity @s[tag=ovenblue] run scoreboard players reset @e[type=zombified_piglin,tag=ovenblue] pizzaTimer

execute if entity @s[tag=ovenred] run tellraw @a [{"selector":"@a[limit=1,team=Red,scores={Ultimate=22}]"},{"text":"'s ovens slowed down!"}]

execute if entity @s[tag=ovenblue] run tellraw @a [{"selector":"@a[limit=1,team=Blue,scores={Ultimate=22}]"},{"text":"'s ovens slowed down!"}]