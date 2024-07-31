execute if score #dummyLoc settings matches 4 run data modify block 18 205 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_location"},"text":"[Click Here]"}','{"text":"to change spawn"}','{"text":"location."}','{"color":"aqua","text":"Ground"}']}

execute if score #dummyLoc settings matches 4 run tag @s add foundBowling

execute if score #dummyLoc settings matches 4 run scoreboard players set #dummyLoc settings 1

execute if score #dummyLoc settings matches 3 run data modify block 18 205 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_location"},"text":"[Click Here]"}','{"text":"to change spawn"}','{"text":"location."}','{"color":"aqua","text":"Bowling"}']}

execute if score #dummyLoc settings matches 3 run scoreboard players set #dummyLoc settings 4

execute if score #dummyLoc settings matches 2 run data modify block 18 205 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_location"},"text":"[Click Here]"}','{"text":"to change spawn"}','{"text":"location."}','{"color":"aqua","text":"Raised Ground"}']}

execute if score #dummyLoc settings matches 2 run scoreboard players set #dummyLoc settings 3

execute if score #dummyLoc settings matches 1 unless entity @s[tag=foundBowling] run data modify block 18 205 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_location"},"text":"[Click Here]"}','{"text":"to change spawn"}','{"text":"location."}','{"color":"aqua","text":"Floating"}']}

execute if score #dummyLoc settings matches 1 unless entity @s[tag=foundBowling] run scoreboard players set #dummyLoc settings 2

tag @s remove foundBowling
