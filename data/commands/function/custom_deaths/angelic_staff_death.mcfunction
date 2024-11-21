execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/angelic_staff_death=true}]"},{"text":" was smited by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was sent to heaven.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was blessed with a free respawn. ","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove