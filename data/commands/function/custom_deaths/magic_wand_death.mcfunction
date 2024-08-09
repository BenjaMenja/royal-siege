execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..3

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/magic_wand_death=true}]"},{"text":" was erased by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was transformed into magic dust.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" vanished into nothingness.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove