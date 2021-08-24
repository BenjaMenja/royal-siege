scoreboard players reset @s numProjs

execute if score @s UUID = @e[type=ender_pearl,limit=1,tag=found,tag=!found2] UUID run scoreboard players add @s numProjs 1

tag @e[type=ender_pearl,limit=1,tag=found] add found2

execute if entity @e[type=ender_pearl,limit=1,tag=found,tag=!found2] run function commands:other/find_projectile

tag @e[type=ender_pearl,limit=1,tag=found] remove found2

scoreboard players add @s numProjs 0