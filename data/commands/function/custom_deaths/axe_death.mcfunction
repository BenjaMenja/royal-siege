execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..5

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was chopped up by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was chopped in half by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was split down the middle by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was bludgeoned by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 5 run tellraw @a [{"selector":"@s"},{"text":" was hit with some good ol' blunt force trauma by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
