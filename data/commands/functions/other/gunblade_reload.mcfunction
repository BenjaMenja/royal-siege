loot replace entity @s hotbar.8 loot commands:main_weapons/gunblade_ammo

scoreboard players add #gunbladeammo counter 1

execute if entity @s[tag=!upgraded] if score #gunbladeammo counter matches ..15 run function commands:other/gunblade_reload

execute if entity @s[tag=upgraded] if score #gunbladeammo counter matches ..20 run function commands:other/gunblade_reload

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

tag @s remove reloading

scoreboard players reset @s reload

scoreboard players reset #gunbladeammo counter