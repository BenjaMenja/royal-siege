tag @s add lavatrap

execute if entity @s[team=Red,predicate=!commands:in_any_blue_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 0 run fill 7 52 -189 11 52 -186 air replace

execute if entity @s[team=Blue,predicate=!commands:in_any_red_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 0 run fill 7 52 -78 11 52 -75 air replace 

execute if entity @s[team=Red,predicate=!commands:in_any_blue_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 1 run fill 126 52 -1019 129 52 -1015 air replace

execute if entity @s[team=Blue,predicate=!commands:in_any_red_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 1 run fill 43 52 -1101 47 52 -1098 air replace 

execute if entity @s[team=Red,predicate=commands:in_any_blue_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 0 run fill 7 52 -78 11 52 -75 air replace

execute if entity @s[team=Blue,predicate=commands:in_any_red_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 0 run fill 7 52 -189 11 52 -186 air replace 

execute if entity @s[team=Red,predicate=commands:in_any_blue_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 1 run fill 43 52 -1101 47 52 -1098 air replace

execute if entity @s[team=Blue,predicate=commands:in_any_red_castle] if score #gamemode settings matches 0 if score #classicMap settings matches 1 run fill 126 52 -1019 129 52 -1015 air replace 

execute if score #gamemode settings matches 1 run function commands:other/lava_trap_tdm

execute if entity @s[team=Red,predicate=commands:in_any_blue_castle] run tag @s add inEnemyCastle

execute if entity @s[team=Blue,predicate=commands:in_any_red_castle] run tag @s add inEnemyCastle

scoreboard players set @s lavaTrapTimer 1500