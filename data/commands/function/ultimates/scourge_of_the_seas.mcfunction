weather rain 15

execute if entity @s[team=Red] run playsound royalsiege:ultimates.scourge_of_the_seas_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[team=Red] run playsound royalsiege:ultimates.scourge_of_the_seas_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.scourge_of_the_seas_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[team=Blue] run playsound royalsiege:ultimates.scourge_of_the_seas_enemy master @a[team=Red] ~ ~ ~ 100 1

function commands:attributes/adds/add_scourge_of_the_seas_speed

effect give @s resistance 15 1 true

loot give @s loot commands:ultimates/mythological_trident

scoreboard players set @s RSAttr.SafeFallDist 300

function commands:attributes/adds/add_safe_fall_dist

tellraw @a [{"selector":"@s"},{"text":" is unleashing the wrath of the sea!"}]

tag @s add scourgeActive

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{scourge:1b}]