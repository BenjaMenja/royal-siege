execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" drank the ice pack liquid.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was chilled to the bone.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" needed to cool off.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove