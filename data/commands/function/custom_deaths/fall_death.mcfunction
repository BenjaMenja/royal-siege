execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..6

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" didn't bounce.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" broke their legs.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" jumped too high.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" couldn't wait to touch the ground again.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" thought they could fly.","color":"white"}]

execute if score #rng RNG matches 6 run tellraw @a [{"selector":"@s"},{"text":" discovered gravity.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove