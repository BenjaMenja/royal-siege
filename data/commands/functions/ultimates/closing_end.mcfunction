execute if entity @s[tag=closingRed] run function commands:ultimates/closing_time_fill_end_red

execute if entity @s[tag=closingBlue] run function commands:ultimates/closing_time_fill_end_blue

execute if entity @s[tag=closingRed] run tag @a[team=Red] remove noWarp

execute if entity @s[tag=closingBlue] run tag @a[team=Blue] remove noWarp

tag @s remove closingRed

tag @s remove closingBlue

scoreboard players reset @s closingEnd