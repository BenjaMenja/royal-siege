execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..4

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" lost a breath holding challenge.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" thought they had gills.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" became shark food.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" is stupid.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
