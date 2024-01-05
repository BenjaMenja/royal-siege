execute as @a[nbt={Inventory:[{tag:{corruptcredit:1b}}]}] run function commands:attributes/adds/add_corruption_atkdmg

execute as @a[nbt={Inventory:[{tag:{corruptcredit:1b}}]}] run function commands:attributes/adds/add_corruption_speed

effect give @a[nbt={Inventory:[{tag:{corruptcredit:1b}}]}] jump_boost 10 0 true

tag @a[nbt={Inventory:[{tag:{corruptcredit:1b}}]}] add corrupted

clear @s carrot_on_a_stick{corruption:1b}