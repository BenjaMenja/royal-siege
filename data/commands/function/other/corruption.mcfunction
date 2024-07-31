execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{corruptcredit:1b}}}]}] run function commands:attributes/adds/add_corruption_atkdmg

execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{corruptcredit:1b}}}]}] run function commands:attributes/adds/add_corruption_speed

effect give @a[nbt={Inventory:[{components:{"minecraft:custom_data":{corruptcredit:1b}}}]}] jump_boost 10 0 true

tag @a[nbt={Inventory:[{components:{"minecraft:custom_data":{corruptcredit:1b}}}]}] add corrupted

clear @s carrot[custom_data~{corruption:1b}]