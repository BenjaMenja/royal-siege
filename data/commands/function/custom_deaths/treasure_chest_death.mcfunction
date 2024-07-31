execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was crushed by a Treasure Chest.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was flattened by a Treasure Chest.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was turned into a pancake by a Treasure Chest.","color":"white"}]

scoreboard players reset #rng RNG

advancement grant @s only commands:hidden_advancements/die_to_treasure_chest

function commands:custom_deaths/advancement_remove