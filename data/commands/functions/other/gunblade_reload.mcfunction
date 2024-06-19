
scoreboard players add #gunbladeammo counter 1

execute if score #gunbladeammo counter matches 1 run loot replace entity @s hotbar.8 loot commands:main_weapons/gunblade_ammo

execute if score #gunbladeammo counter matches 2.. run loot give @s loot commands:main_weapons/gunblade_ammo

execute if entity @s[tag=!upgraded] if score #gunbladeammo counter matches ..14 run function commands:other/gunblade_reload

execute if entity @s[tag=upgraded] if score #gunbladeammo counter matches ..19 run function commands:other/gunblade_reload

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

tag @s remove reloading

scoreboard players reset @s reload

scoreboard players reset #gunbladeammo counter