execute store result score @p moneyToAdd if score @p Kit matches 7 run data get entity @s Item.count 200

execute store result score @p moneyToAdd unless score @p Kit matches 7 run data get entity @s Item.count 150

execute store result score #pirateCoinDeposit temp run data get entity @s Item.count

scoreboard players operation @p Money += @p moneyToAdd

scoreboard players operation @p totalSiegeBucks += @p moneyToAdd

execute if entity @p[scores={Kit=7},tag=upgraded,distance=..5] run scoreboard players operation @p pirateCoinDeposits += #pirateCoinDeposit temp

execute if score @p[scores={Kit=7},tag=upgraded] pirateCoinDeposits matches 5.. as @p at @s run function commands:other/pirate_upgrade_passive

scoreboard players reset @p moneyToAdd

kill @s