execute store result score @s multiItems run clear @s snowball[custom_data~{necrobone:1b}] 0

tag @s[scores={Money=200..,multiItems=..3}] add canBuyNecroBones

loot give @s[tag=canBuyNecroBones,team=Red] loot commands:shop_items/necro_bone_red

loot give @s[tag=canBuyNecroBones,team=Blue] loot commands:shop_items/necro_bone_blue

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{necrobone:1b}] 0

execute if score @s[scores={Money=200..}] multiItems matches 5.. run clear @s snowball[custom_data~{necrobone:1b}] 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{necrobone:1b}] 0

execute if score @s[scores={Money=200..}] multiItems matches 5.. run clear @s snowball[custom_data~{necrobone:1b}] 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{necrobone:1b}] 0

scoreboard players remove @s[tag=canBuyNecroBones] Money 200

tag @s remove canBuyNecroBones

