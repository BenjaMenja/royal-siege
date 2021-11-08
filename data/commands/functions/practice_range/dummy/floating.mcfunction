execute as @e[type=wither_skeleton,tag=dummy,predicate=commands:in_practice_range_floating] run scoreboard players add #dummyFloating multiItems 1

execute if score #dummyFloating multiItems matches 0 run tp @s 29 206 1039

execute if score #dummyFloating multiItems matches 1 run tp @s 29 207 1036

execute if score #dummyFloating multiItems matches 2 run tp @s 29 207 1042

execute if score #dummyFloating multiItems matches 3 run tp @s 29 208 1033

execute if score #dummyFloating multiItems matches 4 run tp @s 29 208 1045

execute if score #dummyFloating multiItems matches 5.. run kill @s

scoreboard players set #dummyFloating multiItems 0