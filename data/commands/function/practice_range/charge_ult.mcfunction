execute if score @s[predicate=!commands:inventory/ultimate_item] Ultimate matches 1..30 run function commands:other/ultimate_charger

execute if entity @s[predicate=commands:inventory/ultimate_item] run tellraw @s {"text":"You already have your ultimate!","color":"red"}

execute unless score @s Ultimate matches 1..30 run tellraw @s {"text":"You need to pick an ultimate first!","color":"aqua"}