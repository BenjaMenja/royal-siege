execute as @e[type=wither_skeleton,tag=dummy,predicate=commands:in_practice_range_raised_ground] run scoreboard players add #dummyRaisedGround multiItems 1

execute if score #dummyRaisedGround multiItems matches 0 run tp @s 11 203 1061

execute if score #dummyRaisedGround multiItems matches 1 run tp @s 13 204 1061

execute if score #dummyRaisedGround multiItems matches 2 run tp @s 9 204 1061

execute if score #dummyRaisedGround multiItems matches 3.. run kill @s

scoreboard players set #dummyRaisedGround multiItems 0