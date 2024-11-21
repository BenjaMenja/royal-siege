execute if entity @a[tag=randomKit,team=Red] store result score #rngRed RNG run random value 1..15

execute if entity @a[tag=randomKit,team=Blue] store result score #rngBlue RNG run random value 1..15

execute as @a[team=Red] if score #rngRed RNG = @s Kit run function commands:starting/random_kit

execute as @a[team=Blue] if score #rngBlue RNG = @s Kit run function commands:starting/random_kit

execute as @a[team=Red] if score #rngRed RNG matches 1 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 1

execute as @a[team=Red] if score #rngRed RNG matches 2 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 2

execute as @a[team=Red] if score #rngRed RNG matches 3 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 3

execute as @a[team=Red] if score #rngRed RNG matches 4 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 4

execute as @a[team=Red] if score #rngRed RNG matches 5 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 5

execute as @a[team=Red] if score #rngRed RNG matches 6 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 6

execute as @a[team=Red] if score #rngRed RNG matches 7 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 7

execute as @a[team=Red] if score #rngRed RNG matches 8 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 8

execute as @a[team=Red] if score #rngRed RNG matches 9 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 9

execute as @a[team=Red] if score #rngRed RNG matches 10 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 10

execute as @a[team=Red] if score #rngRed RNG matches 11 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 11

execute as @a[team=Red] if score #rngRed RNG matches 12 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 12

execute as @a[team=Red] if score #rngRed RNG matches 13 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 13

execute as @a[team=Red] if score #rngRed RNG matches 14 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 14

execute as @a[team=Red] if score #rngRed RNG matches 15 unless score #rngRed RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Red] Kit 15

execute as @a[team=Blue] if score #rngBlue RNG matches 1 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 1

execute as @a[team=Blue] if score #rngBlue RNG matches 2 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 2

execute as @a[team=Blue] if score #rngBlue RNG matches 3 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 3

execute as @a[team=Blue] if score #rngBlue RNG matches 4 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 4

execute as @a[team=Blue] if score #rngBlue RNG matches 5 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 5

execute as @a[team=Blue] if score #rngBlue RNG matches 6 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 6

execute as @a[team=Blue] if score #rngBlue RNG matches 7 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 7

execute as @a[team=Blue] if score #rngBlue RNG matches 8 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 8

execute as @a[team=Blue] if score #rngBlue RNG matches 9 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 9

execute as @a[team=Blue] if score #rngBlue RNG matches 10 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 10

execute as @a[team=Blue] if score #rngBlue RNG matches 11 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 11

execute as @a[team=Blue] if score #rngBlue RNG matches 12 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 12

execute as @a[team=Blue] if score #rngBlue RNG matches 13 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 13

execute as @a[team=Blue] if score #rngBlue RNG matches 14 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 14

execute as @a[team=Blue] if score #rngBlue RNG matches 15 unless score #rngBlue RNG = @s Kit run scoreboard players set @a[tag=randomKit,team=Blue] Kit 15

scoreboard players reset #rngRed RNG

scoreboard players reset #rngBlue RNG