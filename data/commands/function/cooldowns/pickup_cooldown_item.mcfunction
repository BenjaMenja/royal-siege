advancement revoke @s only commands:cooldown_item_pickup

function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out
data modify storage pdb:main in.cooldown_data set value []
title @s clear

execute if score @s Kit matches 10 run function commands:cooldowns/robot_display

data remove storage royalsiege:temporary_storage cooldown_items
data modify storage royalsiege:temporary_storage cooldown_items append from entity @s Inventory[{components:{"minecraft:custom_data":{cooldown_item:{}}}}]
function commands:cooldowns/populate_cooldown_list_macro with storage royalsiege:temporary_storage cooldown_items[-1]

execute if score @s Kit matches 1 run function commands:cooldowns/warrior_display
execute if score @s Kit matches 2 run function commands:cooldowns/ninja_display
execute if score @s Kit matches 3 run function commands:cooldowns/guardian_display
execute if score @s Kit matches 4 run function commands:cooldowns/angel_display
execute if score @s Kit matches 6 run function commands:cooldowns/wizard_display
execute if score @s Kit matches 7 run function commands:cooldowns/pirate_display
execute if score @s Kit matches 8 run function commands:cooldowns/ent_display
execute if score @s Kit matches 9 run function commands:cooldowns/poseidon_display
execute if score @s Kit matches 14 run function commands:cooldowns/astronaut_display
execute if score @s Kit matches 16 run function commands:cooldowns/school_nurse_display
function pdb:save_me

