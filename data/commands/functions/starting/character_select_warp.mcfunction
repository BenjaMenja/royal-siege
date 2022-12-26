tag @s add selectWarp

scoreboard players reset #playercount spawnStuff

#Players in Practice Range

execute if entity @a[predicate=commands:in_practice_range] run tag @s remove selectWarp

execute if entity @a[predicate=commands:in_practice_range] run tellraw @a {"text":"All players must leave the practice range before starting!","color":"red"}

#Players in Parkour

execute if entity @a[predicate=commands:in_parkour_area] run tag @s remove selectWarp

execute if entity @a[predicate=commands:in_parkour_area] run tellraw @a {"text":"All players must leave the parkour area before starting!","color":"red"}

#Not Enough Players

execute unless score @s players matches 4.. run tellraw @a {"text":"You must choose the number of players before playing!","color":"red"}

execute unless score @s players matches 4.. run tag @s remove selectWarp

execute as @a[team=!spectator] run scoreboard players add #playercount spawnStuff 1

execute if score @s players matches 4.. unless score #playercount spawnStuff >= @s players run tellraw @a {"text":"You do not have enough players for this player count!","color":"red"}

execute if score @s players matches 4.. unless score #playercount spawnStuff >= @s players run tellraw @a {"text":"You must choose a smaller player count or move some people off of spectator.","color":"red"}

execute if score @s players matches 4.. unless score #playercount spawnStuff >= @s players run tag @s remove selectWarp

#All checks pass

execute if score #playercount spawnStuff >= @s players if entity @s[tag=selectWarp] run tag @s add randomTeams

execute if entity @s[tag=selectWarp] run function commands:starting/create_teams