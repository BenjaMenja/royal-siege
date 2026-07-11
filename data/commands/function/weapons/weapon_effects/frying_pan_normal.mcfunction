loot replace entity @s weapon.mainhand loot commands:main_weapons/frying_pan

execute at @s[team=Red,tag=!upgraded] run effect give @a[team=Red,distance=..10] regeneration 3 2

execute at @s[team=Red,tag=upgraded] run effect give @a[team=Red,distance=..10] regeneration 4 2

execute at @s[team=Blue,tag=!upgraded] run effect give @a[team=Blue,distance=..10] regeneration 3 2

execute at @s[team=Blue,tag=upgraded] run effect give @a[team=Blue,distance=..10] regeneration 4 2

scoreboard players reset @s damagePan