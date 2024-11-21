execute store result score #rng RNG run random value 1..4

execute if score #rng RNG matches 1 run function commands:scramble/scramble1

execute if score #rng RNG matches 2 run function commands:scramble/scramble2

execute if score #rng RNG matches 3 run function commands:scramble/scramble3

execute if score #rng RNG matches 4 run function commands:scramble/scramble4

scoreboard players reset #rng RNG

playsound minecraft:block.slime_block.step master @s ~ ~ ~

particle item{item:"egg"} ~ ~ ~ 1 1 1 1 20 normal

tag @s remove scrambled