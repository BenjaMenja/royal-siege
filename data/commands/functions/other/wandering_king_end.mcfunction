
tp @s ~ -200 ~

execute if entity @s[tag=wanderingKingRed] if score #classicMap settings matches 0 run tp @e[type=wither_skeleton,tag=King,team=Red] 9 59 -215

execute if entity @s[tag=wanderingKingRed] if score #classicMap settings matches 1 run tp @e[type=wither_skeleton,tag=King,team=Red] 156 59 -1017

execute if entity @s[tag=wanderingKingBlue] if score #classicMap settings matches 0 run tp @e[type=wither_skeleton,tag=King,team=Red] 9 59 -48

execute if entity @s[tag=wanderingKingBlue] if score #classicMap settings matches 1 run tp @e[type=wither_skeleton,tag=King,team=Red] 45 59 -1128