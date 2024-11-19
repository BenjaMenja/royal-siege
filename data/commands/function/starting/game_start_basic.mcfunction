execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run spawnpoint @a[team=Red] 9 126 -161

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run spawnpoint @a[team=Red] 99 126 -1017

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 run spawnpoint @a[team=Red] 50 126 -1971

execute if score #gamemode settings matches 1 if score #classicMap settings matches 0 run spawnpoint @a[team=Red] 1086 53 -61

execute if score #gamemode settings matches 1 if score #classicMap settings matches 1 run spawnpoint @a[team=Red] 2046 106 -33

execute as @a[team=Red,distance=..3] at @s run teleport @s -1402 59 1194

setblock -1369 61 1203 redstone_block

title @a title ["",{"text":"Welcome To","color":"light_purple","bold":true,"underlined":true}]

title @a subtitle ["",{"text":" Royal Siege","color":"gold","bold":true}]

playsound block.anvil.use master @a ~ ~ ~ 100 0

scoreboard players set @a Start 1

scoreboard players set @a Money 0

scoreboard players set @a Ultimate 0

clear @a

effect clear @a

scoreboard players set @a End 0

scoreboard players set @a Respawn -100

scoreboard players set @a[team=Red] RedKit -100

scoreboard players set @a[team=Blue] BlueKit -100

tag @a remove randomized

tellraw @a [{"text":"Your players for this match are:\n","color":"green"},{"text":"Red Team:\n","color":"red"}]

execute as @a[team=Red,limit=1,tag=!namePrinted] run function commands:starting/red_team_print

tellraw @a {"text":"Blue Team:\n","color":"blue"}

execute as @a[team=Blue,limit=1,tag=!namePrinted] run function commands:starting/blue_team_print

tag @a remove namePrinted








































































































































