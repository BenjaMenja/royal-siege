execute if entity @s[team=Red] unless entity @n[predicate=commands:dark_warp_valid,team=Red,distance=..15] run return -1 

execute if entity @s[team=Blue] unless entity @n[predicate=commands:dark_warp_valid,team=Blue,distance=..15] run return -1 

execute if entity @s[team=Red] if entity @n[predicate=commands:dark_warp_valid,team=Red,distance=..15] run function commands:entities/dark_warp_summon_red

execute if entity @s[team=Red] if entity @n[predicate=commands:dark_warp_valid,team=Red,distance=..15] run tp @s @n[predicate=commands:dark_warp_valid,team=Red,distance=..15]

execute if entity @s[team=Red] if entity @n[predicate=commands:dark_warp_valid,team=Red,distance=..15] run scoreboard players set @s darkWarpTimer 300

execute if entity @s[team=Blue] if entity @n[predicate=commands:dark_warp_valid,team=Blue,distance=..15] run function commands:entities/dark_warp_summon_blue

execute if entity @s[team=Blue] if entity @n[predicate=commands:dark_warp_valid,team=Blue,distance=..15] run tp @s @n[predicate=commands:dark_warp_valid,team=Blue,distance=..15]

execute if entity @s[team=Blue] if entity @n[predicate=commands:dark_warp_valid,team=Blue,distance=..15] run scoreboard players set @s darkWarpTimer 300


