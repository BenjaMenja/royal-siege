#Checks if this character exists on the team

execute if entity @s[team=Red] if entity @a[team=Red,scores={Kit=1}] run tellraw @s [{"text":"You already have this character on your team! (","color": "white"},{"selector":"@a[team=Red,scores={Kit=1},limit=1]"},{"text":")","color":"white"}]

execute if entity @s[team=Blue] if entity @a[team=Blue,scores={Kit=1}] run tellraw @s [{"text":"You already have this character on your team! (","color": "white"},{"selector":"@a[team=Blue,scores={Kit=1},limit=1]"},{"text":")","color":"white"}]

execute if entity @s[team=Red] if entity @a[team=Red,scores={Kit=1}] run return -1

execute if entity @s[team=Blue] if entity @a[team=Blue,scores={Kit=1}] run return -1

execute if entity @s[tag=startDelay] run return -1

#Proceed if there isn't

tag @s[predicate=commands:dababy_chance] add dababy

execute unless score @s Kit matches 100 run tag @s add nonspec

execute if entity @s[tag=dababy,tag=nonspec] run tellraw @a ["",{"selector":"@s"},{"text":" has chosen the "},{"text":"Dababy Kit!","color":"yellow"}]

execute at @s[tag=dababy,tag=nonspec] run playsound royalsiege:misc.dababy master @s[tag=dababy,tag=nonspec] ~ ~ ~ 1 1

scoreboard players set @s[tag=!dababy,tag=nonspec,tag=randomized] Kit 1

execute if entity @s[tag=!dababy,tag=nonspec,tag=randomized,team=Red] run tellraw @a[team=Red] ["",{"selector":"@s"},{"text":" has chosen "},{"text":"Warrior!","color":"gray"}]

execute if entity @s[tag=!dababy,tag=nonspec,tag=randomized,team=Blue] run tellraw @a[team=Blue] ["",{"selector":"@s"},{"text":" has chosen "},{"text":"Warrior!","color":"gray"}]

playsound minecraft:block.note_block.chime master @s[tag=!dababy,tag=nonspec,tag=randomized] ~ ~ ~ 100 0.5

scoreboard players add @s[tag=!dababy,tag=nonspec,tag=randomized] secret 27

scoreboard players set @s[tag=!dababy,tag=nonspec,tag=randomized] ultCheck 0

tag @s[tag=nonspec,tag=randomized] remove readyUp

tellraw @s[tag=!dababy,tag=nonspec,tag=randomized] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Cavalry Charge]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 88"}},{"text":" "},{"text":"[Rally]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 89"}}]

tag @s remove dababy

tag @s remove nonspec