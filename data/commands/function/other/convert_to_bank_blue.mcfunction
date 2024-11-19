execute store result score #ccblue moneyToAdd run data get entity @s Item.count

scoreboard players operation #blue corruptBank += #ccblue moneyToAdd

scoreboard players reset #ccblue moneyToAdd

kill @s