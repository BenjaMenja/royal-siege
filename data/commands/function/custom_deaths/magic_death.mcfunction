execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..5

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" shriveled up and died.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" succumbed to magic.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" magically disappeared.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was doomed to fail.","color":"white"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" just kinda dropped dead.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove