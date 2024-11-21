execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..8

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" was sliced in half by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" was pricked way too hard by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 3 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" was splintered by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 4 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" met their end to ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 5 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" lost a duel to ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 6 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" was cut to shreds by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 7 run tellraw @a [{"selector":"@s"},{"text":" doesn't even know how to stay alive. ","color":"white"}]

execute if score #rng RNG matches 8 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/sword_death=true}]"},{"text":" was julienned by ","color":"white"},{"selector":"@s"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove