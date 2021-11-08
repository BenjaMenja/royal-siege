execute as @e[type=wither_skeleton,tag=dummy,predicate=commands:in_practice_range_ground] run scoreboard players add #dummyGround multiItems 1

execute if score #dummyGround multiItems matches 0 run tp @s 7 203 1039

execute if score #dummyGround multiItems matches 1 run tp @s 7 203 1043

execute if score #dummyGround multiItems matches 2 run tp @s 7 203 1035

execute if score #dummyGround multiItems matches 3.. run kill @s

scoreboard players set #dummyGround multiItems 0