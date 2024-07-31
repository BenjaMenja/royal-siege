execute store result score #fryingPan activeHotbar run data get entity @s Inventory[{components:{"minecraft:custom_data":{fryingpan:1b}}}].Slot

execute if score #fryingPan activeHotbar matches 0 run loot replace entity @s hotbar.0 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 1 run loot replace entity @s hotbar.1 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 2 run loot replace entity @s hotbar.2 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 3 run loot replace entity @s hotbar.3 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 4 run loot replace entity @s hotbar.4 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 5 run loot replace entity @s hotbar.5 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 6 run loot replace entity @s hotbar.6 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 7 run loot replace entity @s hotbar.7 loot commands:main_weapons/frying_pan_burning

execute if score #fryingPan activeHotbar matches 8 run loot replace entity @s hotbar.8 loot commands:main_weapons/frying_pan_burning

scoreboard players reset #fryingPan activeHotbar