execute if score #dummyHP settings matches 500 run data modify block 18 203 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_hp"},"text":"[Click Here]"}','{"text":"to change health"}','{"text":"of new dummies."}','{"color":"aqua","text":"Current: 20"}']}

execute if score #dummyHP settings matches 500 run data modify storage royalsiege:dummy_hp HP set value 20

execute if score #dummyHP settings matches 500 run tag @s add found20

execute if score #dummyHP settings matches 500 run scoreboard players set #dummyHP settings 20

execute if score #dummyHP settings matches 250 run data modify block 18 203 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_hp"},"text":"[Click Here]"}','{"text":"to change health"}','{"text":"of new dummies."}','{"color":"aqua","text":"Current: 500"}']}

execute if score #dummyHP settings matches 250 run data modify storage royalsiege:dummy_hp HP set value 500

execute if score #dummyHP settings matches 250 run scoreboard players set #dummyHP settings 500

execute if score #dummyHP settings matches 100 run data modify block 18 203 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_hp"},"text":"[Click Here]"}','{"text":"to change health"}','{"text":"of new dummies."}','{"color":"aqua","text":"Current: 250"}']}

execute if score #dummyHP settings matches 100 run data modify storage royalsiege:dummy_hp HP set value 250

execute if score #dummyHP settings matches 100 run scoreboard players set #dummyHP settings 250

execute if score #dummyHP settings matches 50 run data modify block 18 203 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_hp"},"text":"[Click Here]"}','{"text":"to change health"}','{"text":"of new dummies."}','{"color":"aqua","text":"Current: 100"}']}

execute if score #dummyHP settings matches 50 run data modify storage royalsiege:dummy_hp HP set value 100

execute if score #dummyHP settings matches 50 run scoreboard players set #dummyHP settings 100

execute if score #dummyHP settings matches 20 unless entity @s[tag=found20] run data modify block 18 203 1037 front_text set value {color:"black",has_glowing_text:0b,messages:['{"color":"blue","clickEvent":{"action":"run_command","value":"/function commands:practice_range/change_dummy_hp"},"text":"[Click Here]"}','{"text":"to change health"}','{"text":"of new dummies."}','{"color":"aqua","text":"Current: 50"}']}

execute if score #dummyHP settings matches 20 unless entity @s[tag=found20] run data modify storage royalsiege:dummy_hp HP set value 50

execute if score #dummyHP settings matches 20 unless entity @s[tag=found20] run scoreboard players set #dummyHP settings 50

tag @s remove found20