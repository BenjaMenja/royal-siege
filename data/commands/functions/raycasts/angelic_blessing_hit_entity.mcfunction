scoreboard players set #hit ray.angelicBlessing 1
execute if entity @s[team=Red] run tag @a[team=Red] remove blessed
execute if entity @s[team=Blue] run tag @a[team=Blue] remove blessed
tag @s add blessed
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 10
tellraw @a[tag=angelicblessing] [{"text":"You blessed: ","color":"aqua"},{"selector":"@s"}]