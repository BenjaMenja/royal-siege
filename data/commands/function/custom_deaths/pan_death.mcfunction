execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..4

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was deep fried by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was spanked by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 3 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was served up by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was overcooked.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove