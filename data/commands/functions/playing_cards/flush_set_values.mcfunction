execute if score @s cardSuite matches 1 run scoreboard players set @s cardDamage 12

execute if score @s cardSuite matches 2 run scoreboard players set @s cardDamage 12

execute if score @s cardSuite matches 3 run scoreboard players set @s cardDamage 14

execute if score @s cardSuite matches 4 run scoreboard players set @s cardDamage 10

execute if score @s cardSuite matches 1 run tag @s add spadeSuite

execute if score @s cardSuite matches 2 run tag @s add clubSuite

execute if score @s cardSuite matches 3 run tag @s add diamondSuite

execute if score @s cardSuite matches 4 run tag @s add heartSuite

scoreboard players set #rolledFlush cardTemp 1

tellraw @a[tag=cardShooter] {"text":"You rolled a flush!"}

tag @s add handMade