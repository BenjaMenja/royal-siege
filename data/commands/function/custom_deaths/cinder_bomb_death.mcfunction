execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was cooked alive.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" choked on some smoke.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" showered themselves in embers.","color":"white"}]

execute if entity @s[team=Red] as @a[team=Blue,scores={Kit=15}] run function commands:other/sparkler_upgrade

execute if entity @s[team=Blue] as @a[team=Red,scores={Kit=15}] run function commands:other/sparkler_upgrade

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove