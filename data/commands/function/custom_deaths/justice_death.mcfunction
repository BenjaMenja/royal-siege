execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" had justice served to them.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was welcomed by an instant death.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" couldn't escape justice.","color":"white"}]

execute at @s run particle minecraft:lava ~ ~ ~ 0.5 3 0.5 2 100

execute at @s run particle minecraft:smoke ~ ~ ~ 0.5 3 0.5 0.1 200

execute at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 2

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove