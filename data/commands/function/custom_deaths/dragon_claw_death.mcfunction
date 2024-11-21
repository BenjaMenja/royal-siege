execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/dragon_claw_death=true}]"},{"text":" was cut down by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was slashed by Dragon Claws.","color":"white"}]

execute if score #rng RNG matches 3 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/dragon_claw_death=true}]"},{"text":" was raked by ","color":"white"},{"selector":"@s"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove