scoreboard players set @s[team=Red] RedKit 197

execute at @s[team=Red] run function commands:starting/red

scoreboard players set @s[team=Blue] BlueKit 197

execute at @s[team=Blue] run function commands:starting/blue

tag @s remove wipeKill

scoreboard players reset @s mWipeKill