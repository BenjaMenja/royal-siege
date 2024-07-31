execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..5

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was struck down by lightning.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" rode the lightning, and failed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" tempted the weather gods.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was vaporized by lightning.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" is surging with too much power.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove