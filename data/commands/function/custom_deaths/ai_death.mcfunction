execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..4

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was digitized.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" entered the digital realm.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" watched as AI took over the world.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" die haha","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
