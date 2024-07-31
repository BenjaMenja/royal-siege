execute store result score @s multiItems run clear @s snowball[custom_data~{cinderbomb:1b}] 0

tag @s[scores={Money=350..,multiItems=..3}] add canBuyCinderBomb

loot give @s[tag=canBuyCinderBomb,team=Red] loot commands:shop_items/cinder_bombs_red

loot give @s[tag=canBuyCinderBomb,team=Blue] loot commands:shop_items/cinder_bombs_blue

execute store result score @s[scores={Money=350..}] multiItems run clear @s snowball[custom_data~{cinderbomb:1b}] 0

execute if score @s[scores={Money=350..}] multiItems matches 5.. run clear @s snowball[custom_data~{cinderbomb:1b}] 1

execute store result score @s[scores={Money=350..}] multiItems run clear @s snowball[custom_data~{cinderbomb:1b}] 0

execute if score @s[scores={Money=350..}] multiItems matches 5.. run clear @s snowball[custom_data~{cinderbomb:1b}] 1

execute store result score @s[scores={Money=350..}] multiItems run clear @s snowball[custom_data~{cinderbomb:1b}] 0

scoreboard players remove @s[tag=canBuyCinderBomb] Money 350

tag @s remove canBuyCinderBomb

