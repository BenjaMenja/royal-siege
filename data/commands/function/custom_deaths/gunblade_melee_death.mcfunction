execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/gunblade_melee_death=true}]"},{"text":" was stabbed by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/gunblade_melee_death=true}]"},{"text":" was pistol-whipped by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 3 on attacker run tellraw @a [{"selector":"@a[advancements={commands:custom_deaths/gunblade_melee_death=true}]"},{"text":" was knocked unconscious by ","color":"white"},{"selector":"@s"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove