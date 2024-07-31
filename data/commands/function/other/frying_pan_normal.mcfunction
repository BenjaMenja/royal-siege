execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{fryingpanburning:1b}}}]}] run function commands:replace/frying_pan_normal

execute at @s[team=Red] run effect give @a[team=Red,distance=..10] regeneration 3 2

execute at @s[team=Blue] run effect give @a[team=Blue,distance=..10] regeneration 3 2

scoreboard players reset @s damagePan