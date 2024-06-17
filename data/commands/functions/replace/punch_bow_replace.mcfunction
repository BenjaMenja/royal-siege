execute store result score #switch activeHotbar run data get entity @s Inventory[{tag:{punchbow:1b}}].Slot

execute if score #switch activeHotbar matches 0 run loot replace entity @s hotbar.0 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 1 run loot replace entity @s hotbar.1 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 2 run loot replace entity @s hotbar.2 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 3 run loot replace entity @s hotbar.3 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 4 run loot replace entity @s hotbar.4 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 5 run loot replace entity @s hotbar.5 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 6 run loot replace entity @s hotbar.6 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 7 run loot replace entity @s hotbar.7 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches 8 run loot replace entity @s hotbar.8 loot commands:shop_items/punch_bow_placeholder

execute if score #switch activeHotbar matches -106 run loot replace entity @s weapon.offhand loot commands:shop_items/punch_bow_placeholder

scoreboard players reset #switch activeHotbar