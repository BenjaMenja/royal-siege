execute store result score #lightup RNG run random value 1..4

execute if score #lightup RNG matches 1 run item modify entity @s armor.feet commands:blue_dye

execute if score #lightup RNG matches 2 run item modify entity @s armor.feet commands:green_dye

execute if score #lightup RNG matches 3 run item modify entity @s armor.feet commands:red_dye

execute if score #lightup RNG matches 4 run item modify entity @s armor.feet commands:yellow_dye

scoreboard players set @s lightUpTimer 0