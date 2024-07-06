tag @s add selectWarp

scoreboard players reset #playercount spawnStuff

#Not Enough Players

execute unless score @s players matches 4.. run tellraw @a {"text":"You must choose the number of players before playing!","color":"red"}

execute unless score @s players matches 4.. run tag @s remove selectWarp

execute as @a[team=!spectator] run scoreboard players add #playercount spawnStuff 100

execute if score @s players matches 4.. unless score #playercount spawnStuff >= @s players run tellraw @a {"text":"You do not have enough players for this player count!","color":"red"}

execute if score @s players matches 4.. unless score #playercount spawnStuff >= @s players run tellraw @a {"text":"You must choose a smaller player count or move some people off of spectator.","color":"red"}

execute if score @s players matches 4.. unless score #playercount spawnStuff >= @s players run tag @s remove selectWarp

#All checks pass (Score setting for checking if players are ready)

execute if score #playercount spawnStuff >= @s players if entity @s[tag=selectWarp] run tag @s add randomTeams

execute if entity @s[tag=selectWarp] run scoreboard players set @a Kit 0

execute if entity @s[tag=selectWarp] run scoreboard players set @a ultCheck 0

execute if entity @s[tag=selectWarp] run function commands:starting/create_teams