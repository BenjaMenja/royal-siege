clear @s

effect clear @s

scoreboard players set @s Ultimate 0

scoreboard players set @s ultCheck 0

scoreboard players set @s Kit 11

tellraw @s {"text":"You chose: Chef!","color":"aqua"}

scoreboard players set @s[team=Red] RedKit 197

execute at @s[team=Red] run function commands:starting/red

scoreboard players set @s[team=Blue] BlueKit 197

execute at @s[team=Blue] run function commands:starting/blue