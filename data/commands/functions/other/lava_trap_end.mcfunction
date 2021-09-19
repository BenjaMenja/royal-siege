execute if entity @s[team=Red] if score #gamemode settings matches 0 if score #classicMap settings matches 0 run function commands:other/lava_trap_floor_red

execute if entity @s[team=Blue] if score #gamemode settings matches 0 if score #classicMap settings matches 0 run function commands:other/lava_trap_floor_blue

execute if entity @s[team=Red] if score #gamemode settings matches 0 if score #classicMap settings matches 1 run fill 126 52 -1019 129 52 -1015 snow_block

execute if entity @s[team=Blue] if score #gamemode settings matches 0 if score #classicMap settings matches 1 run fill 43 52 -1101 47 52 -1098 snow_block

execute if score #gamemode settings matches 1 run function commands:other/lava_trap_tdm_fill

execute as @e[predicate=commands:in_lava_trap] at @s run tp @s ~ ~3 ~

tag @s remove lavatrap

scoreboard players reset @s Lava