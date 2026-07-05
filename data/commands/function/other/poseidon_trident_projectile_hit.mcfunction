advancement revoke @s only commands:poseidon_trident_projectile_hit

tag @s add stormOfBlades

execute unless score @s stormOfBladesTier matches -2147483648..2147483647 run scoreboard players set @s stormOfBladesTier 0

scoreboard players add @s[tag=!upgraded,scores={stormOfBladesTier=..2}] stormOfBladesTier 1

scoreboard players add @s[tag=upgraded,scores={stormOfBladesTier=..4}] stormOfBladesTier 1

execute store result storage royalsiege:main temp.stormOfBladesTier int 1 run scoreboard players get @s stormOfBladesTier

function commands:attributes/clears/clear_storm_of_blades_atkdmg

function commands:attributes/adds/add_storm_of_blades_atkdmg with storage royalsiege:main temp