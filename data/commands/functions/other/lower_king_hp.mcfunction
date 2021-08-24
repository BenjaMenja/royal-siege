execute store result score #kingHP bossHP run data get entity @s Health

scoreboard players remove #kingHP bossHP 1

execute store result entity @s Health float 1 run scoreboard players get #kingHP bossHP

scoreboard players reset #kingHP bossHP

scoreboard players reset #loseKingHP gameDuration

