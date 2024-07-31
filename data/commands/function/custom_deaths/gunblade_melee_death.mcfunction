execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..6

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was stabbed by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was pistol-whipped by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was knocked unconscious by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove