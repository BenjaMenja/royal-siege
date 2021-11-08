execute if score #dummyLoc settings matches 4 run data modify block 18 205 1037 Text4 set value '{"text":"Ground","color":"aqua"}'

execute if score #dummyLoc settings matches 4 run tag @s add foundBowling

execute if score #dummyLoc settings matches 4 run scoreboard players set #dummyLoc settings 1

execute if score #dummyLoc settings matches 3 run data modify block 18 205 1037 Text4 set value '{"text":"Bowling","color":"aqua"}'

execute if score #dummyLoc settings matches 3 run scoreboard players set #dummyLoc settings 4

execute if score #dummyLoc settings matches 2 run data modify block 18 205 1037 Text4 set value '{"text":"Raised Ground","color":"aqua"}'

execute if score #dummyLoc settings matches 2 run scoreboard players set #dummyLoc settings 3

execute if score #dummyLoc settings matches 1 unless entity @s[tag=foundBowling] run data modify block 18 205 1037 Text4 set value '{"text":"Floating","color":"aqua"}'

execute if score #dummyLoc settings matches 1 unless entity @s[tag=foundBowling] run scoreboard players set #dummyLoc settings 2

tag @s remove foundBowling
