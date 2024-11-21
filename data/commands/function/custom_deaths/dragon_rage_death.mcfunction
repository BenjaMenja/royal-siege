execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" couldn't handle the rage.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was engulfed in Dragon Rage.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was blasted to pieces by Dragon Rage.","color":"white"}]

scoreboard players reset #rng RNG

execute if entity @s[team=Red] if entity @a[limit=1,team=Blue,scores={Kit=12,gliding=1..}] run advancement grant @a[limit=1,team=Blue,scores={Kit=12,gliding=1..}] only commands:character_challenges/dragon_dive

execute if entity @s[team=Blue] if entity @a[limit=1,team=Red,scores={Kit=12,gliding=1..}] run advancement grant @a[limit=1,team=Red,scores={Kit=12,gliding=1..}] only commands:character_challenges/dragon_dive

function commands:custom_deaths/advancement_remove