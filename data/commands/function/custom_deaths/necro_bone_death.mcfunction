execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was clobbered by a necro bone.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" fractured a bone or two.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":"'s skeleton collapsed.","color":"white"}]

execute at @s run particle dust{color:[0.467,0.000,1.000],scale:1} ~ ~ ~ 0.3 0.3 0.3 1 12

execute at @s[team=Red] run function commands:entities/necromancer_summon_blue

execute at @s[team=Blue] run function commands:entities/necromancer_summon_red

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove