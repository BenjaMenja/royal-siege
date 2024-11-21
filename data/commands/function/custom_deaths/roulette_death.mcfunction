execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" took a bullet to the face.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" lost a game of roulette.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" forfeited their life.","color":"white"}]

scoreboard players reset #rng RNG

execute if entity @s[team=Red] if entity @a[team=Blue,scores={Kit=13},tag=!upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive

execute if entity @s[team=Red] if entity @a[team=Blue,scores={Kit=13},tag=upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive_upgraded

execute if entity @s[team=Blue] if entity @a[team=Red,scores={Kit=13},tag=!upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive

execute if entity @s[team=Blue] if entity @a[team=Red,scores={Kit=13},tag=upgraded] at @s run loot spawn ~ ~ ~ loot commands:rng/gambler_passive_upgraded

function commands:custom_deaths/advancement_remove
