tag @s remove rebooting

scoreboard players reset @s Rebooting

execute if entity @a[predicate=commands:location/practice_range/in_practice_range] run return 1

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:0}}} if entity @s[team=Blue] run teleport @s -4 60 -67

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:0}}} if entity @s[team=Red] run teleport @s 22 60 -197

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:1}}} if entity @s[team=Blue] run teleport @s 58 60 -1109

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:1}}} if entity @s[team=Red] run teleport @s 137 60 -1004

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:2}}} if entity @s[team=Blue] run teleport @s 19 64 -2041

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:2}}} if entity @s[team=Red] run teleport @s 19 64 -1901

execute if data storage royalsiege:settings {Gamemode:1} if data storage royalsiege:settings {Maps:{TDM:{value:0}}} if entity @s[team=Red] run teleport @s 1086 53 -61

execute if data storage royalsiege:settings {Gamemode:1} if data storage royalsiege:settings {Maps:{TDM:{value:0}}} if entity @s[team=Blue] run teleport @s 1015 53 -61

execute if data storage royalsiege:settings {Gamemode:1} if data storage royalsiege:settings {Maps:{TDM:{value:1}}} if entity @s[team=Red] run teleport @s 2046 106 -33

execute if data storage royalsiege:settings {Gamemode:1} if data storage royalsiege:settings {Maps:{TDM:{value:1}}} if entity @s[team=Blue] run teleport @s 1971 106 33

tellraw @s {"text":"Welcome Home!","color":"green"}