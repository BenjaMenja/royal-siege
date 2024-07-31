execute as @e[type=wither_skeleton,tag=dummy,predicate=commands:in_practice_range_bowling] run scoreboard players add #dummyBowling multiItems 1

execute if score #dummyBowling multiItems matches 0 run tp @s 25 203 1057

execute if score #dummyBowling multiItems matches 1 run tp @s 26 203 1059

execute if score #dummyBowling multiItems matches 2 run tp @s 24 203 1059

execute if score #dummyBowling multiItems matches 3 run tp @s 27 203 1061

execute if score #dummyBowling multiItems matches 4 run tp @s 25 203 1061

execute if score #dummyBowling multiItems matches 5 run tp @s 23 203 1061

execute if score #dummyBowling multiItems matches 6 run tp @s 28 203 1063

execute if score #dummyBowling multiItems matches 7 run tp @s 26 203 1063

execute if score #dummyBowling multiItems matches 8 run tp @s 24 203 1063

execute if score #dummyBowling multiItems matches 9 run tp @s 22 203 1063

execute if score #dummyBowling multiItems matches 10.. run kill @s

scoreboard players set #dummyBowling multiItems 0