tag @s add purchase

give @s[scores={Money=400..},tag=purchase] ender_pearl 1

scoreboard players remove @s[scores={Money=400..},tag=purchase] Money 400

tag @s remove purchase