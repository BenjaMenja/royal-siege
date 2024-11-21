execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..6

execute if score #rng RNG matches 1 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was gunned down by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=7}]"}]

execute if score #rng RNG matches 2 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" took a bullet to the chest from ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=7}]"}]

execute if score #rng RNG matches 3 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was blown apart by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=7}]"}]

execute if score #rng RNG matches 4 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" lost a quick draw to ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=7}]"}]

execute if score #rng RNG matches 5 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was filled with lead by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=7}]"}]

execute if score #rng RNG matches 6 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@s[team=Red]"},{"text":" was eviscerated by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=7}]"}]

execute if score #rng RNG matches 1 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was gunned down by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=7}]"}]

execute if score #rng RNG matches 2 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" took a bullet to the chest from ","color":"white"},{"selector":"@a[team=Red,scores={Kit=7}]"}]

execute if score #rng RNG matches 3 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was blown apart by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=7}]"}]

execute if score #rng RNG matches 4 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" lost a quick draw to ","color":"white"},{"selector":"@a[team=Red,scores={Kit=7}]"}]

execute if score #rng RNG matches 5 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was filled with lead by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=7}]"}]

execute if score #rng RNG matches 6 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@s[team=Blue]"},{"text":" was eviscerated by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=7}]"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
