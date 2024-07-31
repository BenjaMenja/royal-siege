execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" fizzled out.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" burst into sparks.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was set ablaze.","color":"white"}]

scoreboard players reset #rng RNG

execute if entity @s[team=Red] as @a[team=Blue,scores={Kit=15}] run function commands:other/sparkler_upgrade

execute if entity @s[team=Blue] as @a[team=Red,scores={Kit=15}] run function commands:other/sparkler_upgrade

schedule function commands:custom_deaths/remove_fireball_fire 3

function commands:custom_deaths/advancement_remove
