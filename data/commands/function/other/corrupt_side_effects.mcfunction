execute store result score #rng RNG run random value 1..10

execute if score #rng RNG matches 1 run effect give @s nausea 4 0 true

execute if score #rng RNG matches 2 run function commands:attributes/adds/add_corruption_slow

execute if score #rng RNG matches 3 run scoreboard players set @s RSAttr.Rooted 40

execute if score #rng RNG matches 3 run function commands:attributes/adds/add_rooted

execute if score #rng RNG matches 4 run effect give @s levitation 2 1 true

scoreboard players reset #rng RNG
