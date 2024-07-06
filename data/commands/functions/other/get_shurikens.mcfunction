loot give @s[team=Blue] loot commands:main_abilities/shuriken_blue
loot give @s[team=Red] loot commands:main_abilities/shuriken_red

execute store result score @s multiItems run clear @s snowball[custom_data~{shuriken:1b}] 0

clear @s[scores={multiItems=9..}] snowball[custom_data~{shuriken:1b}] 1

execute store result score @s multiItems run clear @s snowball[custom_data~{shuriken:1b}] 0

clear @s[scores={multiItems=9..}] snowball[custom_data~{shuriken:1b}] 1

scoreboard players set @s shurikenTimer 100