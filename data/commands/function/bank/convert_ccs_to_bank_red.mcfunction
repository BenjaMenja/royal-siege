execute store result score #ccred moneyToAdd run data get entity @s Item.count

scoreboard players operation #red corruptBank += #ccred moneyToAdd

scoreboard players reset #ccred moneyToAdd

kill @s