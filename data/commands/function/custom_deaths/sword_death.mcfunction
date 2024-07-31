execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..8

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was sliced in half by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was pricked way too hard by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was splintered by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" met their end to ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" lost a duel to ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 6 run tellraw @a [{"selector":"@s"},{"text":" was cut to shreds by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 7 run tellraw @a [{"selector":"@s"},{"text":" doesn't even know how to stay alive. ","color":"white"}]

execute if score #rng RNG matches 8 run tellraw @a [{"selector":"@s"},{"text":" was julienned by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove