execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..6

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was shot between the eyes.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was pierced by an arrow.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was shot through the heart.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was dispatched.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" took an arrow to the knee.","color":"white"}]

execute if score #rng RNG matches 6 run tellraw @a [{"selector":"@s"},{"text":" was used for target practice.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
