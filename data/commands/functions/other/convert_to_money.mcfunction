execute at @s run tag @p add moneyr

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=1..6},tag=moneyr] Money 150

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=1..6},tag=moneyr] totalSiegeBucks 150

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=7},tag=moneyr] Money 200

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=7},tag=moneyr] totalSiegeBucks 200

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=8..50},tag=moneyr] Money 150

execute at @s run scoreboard players add @p[distance=..4,scores={Kit=8..50},tag=moneyr] totalSiegeBucks 150

kill @s

tag @a remove moneyr