execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" got front row tickets to the firework show.","color":"white"}]

execute if score #rng RNG matches 2 if entity @s[team=Red] run tellraw @a [{"selector":"@s"},{"text":" was shelled by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=15}]"},{"text":".","color":"white"}]

execute if score #rng RNG matches 2 if entity @s[team=Blue] run tellraw @a [{"selector":"@s"},{"text":" was shelled by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=15}]"},{"text":".","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" ate a mouthful of gunpowder.","color":"white"}]

execute if entity @s[team=Red] as @a[team=Blue,scores={Kit=15}] run function commands:other/sparkler_upgrade

execute if entity @s[team=Blue] as @a[team=Red,scores={Kit=15}] run function commands:other/sparkler_upgrade

scoreboard players reset #rng RNG

schedule function commands:custom_deaths/remove_fireball_fire 3

function commands:custom_deaths/advancement_remove