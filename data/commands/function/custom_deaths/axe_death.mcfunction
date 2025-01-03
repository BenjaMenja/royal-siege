execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..6

execute if score #rng RNG matches 1 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was chopped up by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 2 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was chopped in half by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 3 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was split down the middle by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 4 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was hacked to bits by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 5 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was bludgeoned by ","color":"white"},{"selector":"@s"}]

execute if score #rng RNG matches 6 on attacker run tellraw @a [{"selector":"@a[tag=custom_death]"},{"text":" was hit with some good ol' blunt force trauma by ","color":"white"},{"selector":"@s"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
