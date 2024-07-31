execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..4

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was deep fried by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was spanked by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was served up by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was overcooked.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove