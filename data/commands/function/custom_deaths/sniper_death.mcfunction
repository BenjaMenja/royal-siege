execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 if entity @s[team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was sniped by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5}]"}]

execute if score #rng RNG matches 2 if entity @s[team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was shot down by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5}]"}]

execute if score #rng RNG matches 3 if entity @s[team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was picked off by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5}]"}]

execute if score #rng RNG matches 1 if entity @s[team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was sniped by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5}]"}]

execute if score #rng RNG matches 2 if entity @s[team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was shot down by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5}]"}]

execute if score #rng RNG matches 3 if entity @s[team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was picked off by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5}]"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
