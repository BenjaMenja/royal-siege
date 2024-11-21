execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..5

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" fell for the simplest of tricks.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" be sent to Davy Jones' Locker.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" couldn't handle the surprise.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" is probably scratching their head right now.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" got too greedy.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove