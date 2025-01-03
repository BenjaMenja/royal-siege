execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was bludgeoned by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" got their temperature checked by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" drank some liquid mercury.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove