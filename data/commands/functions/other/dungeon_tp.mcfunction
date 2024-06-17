execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tp @s[team=Blue] -17 25.5 -142

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tp @s[team=Red] -21 25 -141

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tp @s[team=Blue] 87 53 -1076 135 0

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tp @s[team=Red] 107 53 -1056 135 0

clear @s[team=Blue] carrot_on_a_stick[custom_data~{lightningstaff:1b}]

tag @s remove dungeonTP

scoreboard players reset @s dungeonDelay