execute if score @s Ultimate matches 1..28 run function commands:other/ultimate_charger

execute unless score @s Ultimate matches 1..28 run tellraw @s {"text":"You need to pick an ultimate first!","color":"aqua"}