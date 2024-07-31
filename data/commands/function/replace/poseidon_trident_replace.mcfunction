execute store result score #switch activeHotbar run data get entity @s SelectedItemSlot

execute if score #switch activeHotbar matches 0 run loot replace entity @s hotbar.0 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 1 run loot replace entity @s hotbar.1 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 2 run loot replace entity @s hotbar.2 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 3 run loot replace entity @s hotbar.3 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 4 run loot replace entity @s hotbar.4 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 5 run loot replace entity @s hotbar.5 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 6 run loot replace entity @s hotbar.6 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 7 run loot replace entity @s hotbar.7 loot commands:main_weapons/poseidon_trident

execute if score #switch activeHotbar matches 8 run loot replace entity @s hotbar.8 loot commands:main_weapons/poseidon_trident

scoreboard players reset #switch activeHotbar