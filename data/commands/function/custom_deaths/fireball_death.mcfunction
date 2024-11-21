execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..6

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was blasted to pieces.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" exploded into a fabulous display of parts.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" couldn't contain the explosion.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was blown to smithereens.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" is now a pile of dust.","color":"white"}]

execute if score #rng RNG matches 6 run tellraw @a [{"selector":"@s"},{"text":" was turned into a fiery cloud of gas.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove