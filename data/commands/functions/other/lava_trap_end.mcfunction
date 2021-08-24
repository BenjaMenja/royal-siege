execute if entity @s[team=Red] if score #gamemode settings matches 0 run function commands:other/lava_trap_floor_red

execute if entity @s[team=Blue] if score #gamemode settings matches 0 run function commands:other/lava_trap_floor_blue

execute if score #gamemode settings matches 1 run function commands:other/lava_trap_tdm_fill

execute as @e[predicate=commands:in_lava_trap] at @s run tp @s ~ ~3 ~

tag @s remove lavatrap

scoreboard players reset @s Lava