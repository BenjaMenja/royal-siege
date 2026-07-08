tag @s remove vengeanceUser

execute if entity @s[team=Red] run tag @a[team=Red] remove vengeance

execute if entity @s[team=Red] run scoreboard players set @a[team=Red,distance=..10] vengeanceDur 100

execute if entity @s[team=Blue] run tag @a[team=Blue] remove vengeance

execute if entity @s[team=Blue] run scoreboard players set @a[team=Blue,distance=..10] vengeanceDur 100

#Apply protection

execute if entity @s[team=Red] if score @s vengeanceTally matches 200.. run item modify entity @a[team=Red,distance=..10] armor.chest commands:vengeance_protection

execute if entity @s[team=Blue] if score @s vengeanceTally matches 200.. run item modify entity @a[team=Blue,distance=..10] armor.chest commands:vengeance_protection

#Convert damage value

scoreboard players operation @s vengeanceTally /= #10 constant

#Apply 20%

scoreboard players operation @s vengeanceTally /= #5 constant

#Apply armor

execute store result storage royalsiege:main vengeance_armor int 1 run scoreboard players get @s vengeanceTally

execute if entity @s[team=Red] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_vengeance_armor with storage royalsiege:main

execute if entity @s[team=Blue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_vengeance_armor with storage royalsiege:main