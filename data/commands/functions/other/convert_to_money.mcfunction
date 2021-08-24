execute at @s run tag @p add moneyr

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=1..6},tag=moneyr,tag=!badCredit] Money 150

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=7},tag=moneyr,tag=!badCredit] Money 200

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=8..50},tag=moneyr,tag=!badCredit] Money 150

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=1..6},tag=moneyr,tag=badCredit] Money 70

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=7},tag=moneyr,tag=badCredit] Money 100

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=8..50},tag=moneyr,tag=badCredit] Money 70

kill @s

tag @a remove moneyr