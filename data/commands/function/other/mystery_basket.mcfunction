execute store result score #mysteryfood RNG run random value 1..6

tag @s add basketuser

#Red Team

execute if score #mysteryfood RNG matches 1..6 if entity @s[team=Red] as @a[distance=..10,team=Red] run function commands:other/custom_heal {health:4,ult_charge_receiver:"@a[tag=basketuser]"}

execute if score #mysteryfood RNG matches 1..6 if entity @s[team=Red] run effect give @a[distance=..10,team=Red] saturation 1 3

execute if score #mysteryfood RNG matches 1 if entity @s[team=Red] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Steak ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 1 if entity @s[team=Red] as @a[distance=..10,team=Red] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Steak ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 1 if entity @s[team=Red] as @a[distance=..10,team=Red] run function commands:attributes/adds/add_mystery_basket_atkdmg

execute if score #mysteryfood RNG matches 2 if entity @s[team=Red] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Golden Apple ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 2 if entity @s[team=Red] as @a[distance=..10,team=Red] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Golden Apple ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 2 if entity @s[team=Red] run effect clear @a[team=Red,distance=..10,scores={absHearts=..6}] absorption

execute if score #mysteryfood RNG matches 2 if entity @s[team=Red] run effect give @a[distance=..10,team=Red] absorption 10 0 true

execute if score #mysteryfood RNG matches 3 if entity @s[team=Red] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Pumpkin Pie ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 3 if entity @s[team=Red] as @a[distance=..10,team=Red] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Pumpkin Pie ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 3 if entity @s[team=Red] as @a[distance=..10,team=Red] run function commands:attributes/adds/add_mystery_basket_speed

execute if score #mysteryfood RNG matches 4 if entity @s[team=Red] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Rabbit Stew ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 4 if entity @s[team=Red] as @a[distance=..10,team=Red] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Rabbit Stew ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 4 if entity @s[team=Red] run effect give @a[distance=..10,team=Red] resistance 8 0 true

execute if score #mysteryfood RNG matches 5 if entity @s[team=Red] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Watermelon ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 5 if entity @s[team=Red] as @a[distance=..10,team=Red] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Watermelon ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 5 if entity @s[team=Red] run effect give @a[distance=..10,team=Red] regeneration 5 1 true

execute if score #mysteryfood RNG matches 6 if entity @s[team=Red] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Baked Potato ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 6 if entity @s[team=Red] as @a[distance=..10,team=Red] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Baked Potato ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 6 if entity @s[team=Red] as @a[distance=..10,team=Red] run function commands:attributes/adds/add_mystery_basket_atkspd

#Blue Team

execute if score #mysteryfood RNG matches 1..6 if entity @s[team=Blue] as @a[distance=..10,team=Blue] run function commands:other/custom_heal {health:4,ult_charge_receiver:"@a[tag=basketuser]"}

execute if score #mysteryfood RNG matches 1..6 if entity @s[team=Blue] run effect give @a[distance=..10,team=Blue] saturation 1 3

execute if score #mysteryfood RNG matches 1 if entity @s[team=Blue] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Steak ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 1 if entity @s[team=Blue] as @a[distance=..10,team=Blue] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Steak ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 1 if entity @s[team=Blue] as @a[distance=..10,team=Blue] run function commands:attributes/adds/add_mystery_basket_atkdmg

execute if score #mysteryfood RNG matches 2 if entity @s[team=Blue] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Golden Apple ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 2 if entity @s[team=Blue] as @a[distance=..10,team=Blue] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Golden Apple ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 2 if entity @s[team=Blue] run effect clear @a[team=Blue,distance=..10,scores={absHearts=..6}] absorption

execute if score #mysteryfood RNG matches 2 if entity @s[team=Blue] run effect give @a[distance=..10,team=Blue] absorption 10 0 true

execute if score #mysteryfood RNG matches 3 if entity @s[team=Blue] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Pumpkin Pie ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 3 if entity @s[team=Blue] as @a[distance=..10,team=Blue] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Pumpkin Pie ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 3 if entity @s[team=Blue] as @a[distance=..10,team=Blue] run function commands:attributes/adds/add_mystery_basket_speed

execute if score #mysteryfood RNG matches 4 if entity @s[team=Blue] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Rabbit Stew ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 4 if entity @s[team=Blue] as @a[distance=..10,team=Blue] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Rabbit Stew ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 4 if entity @s[team=Blue] run effect give @a[distance=..10,team=Blue] resistance 8 0 true

execute if score #mysteryfood RNG matches 5 if entity @s[team=Blue] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Watermelon ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 5 if entity @s[team=Blue] as @a[distance=..10,team=Blue] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Watermelon ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 5 if entity @s[team=Blue] run effect give @a[distance=..10,team=Blue] regeneration 5 1 true

execute if score #mysteryfood RNG matches 6 if entity @s[team=Blue] run tellraw @s [{"text":"You prepared a ","color":"gold"},{"text":"Baked Potato ","color":"green"},{"text":"for your team!","color":"gold"}]

execute if score #mysteryfood RNG matches 6 if entity @s[team=Blue] as @a[distance=..10,team=Blue] unless score @s Kit matches 11 run tellraw @s [{"text":"Your chef prepared a ","color":"gold"},{"text":"Baked Potato ","color":"green"},{"text":"for you!","color":"gold"}]

execute if score #mysteryfood RNG matches 6 if entity @s[team=Blue] as @a[distance=..10,team=Blue] run function commands:attributes/adds/add_mystery_basket_atkspd

#Burp Effect

execute at @s if score #mysteryfood RNG matches 1..6 run playsound entity.player.burp master @a[distance=..10] ~ ~ ~ 1 0

#Remove mysteryfood score

scoreboard players reset #mysteryfood RNG

#Set player timer

scoreboard players set @s[tag=!upgraded] basketTimer 280

scoreboard players set @s[tag=upgraded] basketTimer 200

#Remove tag

tag @s remove basketuser