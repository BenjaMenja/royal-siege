execute store result score @p moneyToAdd if score @p Kit matches 7 run data get entity @s Item.count 200

execute store result score @p moneyToAdd unless score @p Kit matches 7 run data get entity @s Item.count 150

scoreboard players operation @p Money += @p moneyToAdd

scoreboard players operation @p totalSiegeBucks += @p moneyToAdd

scoreboard players reset @p moneyToAdd

kill @s