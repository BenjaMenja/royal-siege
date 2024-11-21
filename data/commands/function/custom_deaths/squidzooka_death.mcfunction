execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was blasted to pieces.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was inked on a little too hard.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" drowned in ink.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove