execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..4

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was impaled by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" got outclassed by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 3 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was speared by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 4 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was skewered by ","color":"white"},{"selector":"@s"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove