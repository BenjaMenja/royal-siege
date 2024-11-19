execute if entity @a[predicate=commands:in_practice_range] run return 1

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if entity @s[team=Blue] run teleport @s -4 60 -67

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if entity @s[team=Red] run teleport @s 22 60 -197

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if entity @s[team=Blue] run teleport @s 58 60 -1109

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if entity @s[team=Red] run teleport @s 137 60 -1004

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 if entity @s[team=Blue] run teleport @s 19 64 -2041

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 if entity @s[team=Red] run teleport @s 19 64 -1901

scoreboard players reset @s castleWarpTimer

tag @s remove homewarp