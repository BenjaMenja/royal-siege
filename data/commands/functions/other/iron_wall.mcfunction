tag @s add iron_wall

execute at @s run playsound minecraft:item.trident.throw master @a[distance=..15] ~ ~ ~ 1 0

loot replace entity @s armor.legs loot commands:main_armor/robot_iron_wall_leggings

function commands:attributes/adds/add_iron_wall_slow

effect give @s resistance 5 1 true

scoreboard players set @s ironTimer 1200