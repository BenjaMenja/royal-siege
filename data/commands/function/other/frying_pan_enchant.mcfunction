execute if entity @s[tag=!upgraded,nbt=!{Inventory:[{components:{"custom_data":{fryingpanburning:1b}}}]}] run function commands:replace/frying_pan_replace

execute if entity @s[tag=upgraded,nbt=!{Inventory:[{components:{"custom_data":{fryingpanburning:1b}}}]}] run function commands:replace/frying_pan_upgraded_replace

scoreboard players reset @s damagePan