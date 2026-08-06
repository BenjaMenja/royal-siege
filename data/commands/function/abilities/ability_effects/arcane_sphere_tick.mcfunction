#Motion

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s posX

execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s posY

execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s posZ

#Particle

particle nautilus ~ ~0.4 ~ 0.05 0.05 0.05 0 3 force

#Damage

scoreboard players add @s arcaneSphereTimer 1

execute if score @s[tag=arcaneSphereProjRed] arcaneSphereTimer matches 5 run damage @p[team=Blue,distance=..3] 1 commands:arcane_sphere

execute if score @s[tag=arcaneSphereProjBlue] arcaneSphereTimer matches 5 run damage @p[team=Red,distance=..3] 1 commands:arcane_sphere

execute if score @s arcaneSphereTimer matches 5 run scoreboard players add @s arcaneSphereStore 1

execute if score @s arcaneSphereTimer matches 5 run scoreboard players set @s arcaneSphereTimer 0

#Cleanup

execute store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute if score @s nearbyBlocks matches 1.. run function commands:abilities/ability_cleanup/arcane_sphere_end

execute if score @s arcaneSphereStore matches 40 run function commands:abilities/ability_cleanup/arcane_sphere_end