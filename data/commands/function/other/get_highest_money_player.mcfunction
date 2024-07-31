execute unless score #stop Money matches 1 run tag @a remove highestmoneyred

execute unless score #stop Money matches 1 run tag @a remove highestmoneyblue

scoreboard players set #stop Money 1

execute as @a[limit=1,team=Red,tag=!found,tag=!notAlive,sort=nearest] if score @s Money > #highestmoneyred Money run tag @a remove highestmoneyred

execute as @a[limit=1,team=Red,tag=!found,tag=!notAlive,sort=nearest] if score @s Money > #highestmoneyred Money run tag @s add highestmoneyred

execute as @a[limit=1,team=Red,tag=!found,tag=!notAlive,sort=nearest] if score @s Money > #highestmoneyred Money run scoreboard players operation #highestmoneyred Money = @s Money

tag @a[limit=1,team=Red,tag=!found,tag=!notAlive,sort=nearest] add found

execute as @a[limit=1,team=Blue,tag=!found,tag=!notAlive,sort=nearest] if score @s Money > #highestmoneyblue Money run tag @a remove highestmoneyblue

execute as @a[limit=1,team=Blue,tag=!found,tag=!notAlive,sort=nearest] if score @s Money > #highestmoneyblue Money run tag @s add highestmoneyblue

execute as @a[limit=1,team=Blue,tag=!found,tag=!notAlive,sort=nearest] if score @s Money > #highestmoneyblue Money run scoreboard players operation #highestmoneyblue Money = @s Money

tag @a[limit=1,team=Blue,tag=!found,tag=!notAlive,sort=nearest] add found

execute if entity @a[limit=1,tag=!found,tag=!notAlive,tag=!spectator] run function commands:other/get_highest_money_player

scoreboard players set #highestmoneyred Money 0

scoreboard players set #highestmoneyblue Money 0

scoreboard players set #stop Money 0

tag @a remove found


