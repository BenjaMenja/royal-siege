tag @s[predicate=commands:dababy_chance] add dababy

execute unless score @s Kit matches 100 run tag @s add nonspec

execute if entity @s[tag=dababy,tag=nonspec] run tellraw @a ["",{"selector":"@s"},{"text":" has chosen the "},{"text":"Dababy Kit!","color":"yellow"}]

execute at @s[tag=dababy,tag=nonspec] run playsound royalsiege:misc.dababy master @s[tag=dababy,tag=nonspec] ~ ~ ~ 1 1

scoreboard players set @s[tag=!dababy,tag=nonspec,tag=randomized] Kit 5

execute if entity @s[tag=!dababy,tag=nonspec,tag=randomized,team=Red] run tellraw @a[team=Red] ["",{"selector":"@s"},{"text":" has chosen "},{"text":"Archer!","color":"dark_green"}]

execute if entity @s[tag=!dababy,tag=nonspec,tag=randomized,team=Blue] run tellraw @a[team=Blue] ["",{"selector":"@s"},{"text":" has chosen "},{"text":"Archer!","color":"dark_green"}]

playsound minecraft:block.note_block.chime master @s[tag=!dababy,tag=nonspec,tag=randomized] ~ ~ ~ 100 0.5

scoreboard players add @s[tag=!dababy,tag=nonspec,tag=randomized] secret 4

scoreboard players set @s[tag=!dababy,tag=nonspec,tag=randomized] ultCheck 0

tellraw @s[tag=!dababy,tag=nonspec,tag=randomized] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Chaos Bow]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 68"}},{"text":" "},{"text":"[Bow of Justice]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 69"}}]

tag @s remove dababy

tag @s remove nonspec