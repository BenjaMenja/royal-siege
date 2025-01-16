scoreboard players set #hit rayVar 1
particle witch ~ ~ ~ 0.5 0.5 0.5 1 15
execute store result score #health healthVar run data get entity @s Health
scoreboard players add #health healthVar 15
execute if entity @p[tag=necroStaffUser,tag=upgraded] run scoreboard players add #health healthVar 5
execute store result entity @s Health float 1 run scoreboard players get #health healthVar
scoreboard players set @p[tag=necroStaffUser] necroStaffTimer 320


