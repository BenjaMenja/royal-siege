execute store result score #healthNew healthVar run scoreboard players get @s Health
execute at @s if score #healthNew healthVar > #healthOld healthVar run function commands:entities/siege_coin
scoreboard players reset #healthOld healthVar
scoreboard players reset #healthNew healthVar
