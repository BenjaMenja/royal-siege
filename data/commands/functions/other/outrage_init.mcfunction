tag @s add outrage

function commands:attributes/adds/add_outrage_speed

loot replace entity @s armor.legs loot commands:main_armor/dragon_outrage_leggings

execute at @s run playsound entity.ender_dragon.growl master @a[distance=..10] ~ ~ ~ 1 1.8

execute at @s run particle minecraft:angry_villager ~ ~ ~ 0.85 0.85 0.85 1 10

clear @s carrot_on_a_stick[custom_data~{outrage:1b}]