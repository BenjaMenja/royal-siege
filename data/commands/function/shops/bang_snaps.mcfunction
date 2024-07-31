execute store result score @s multiItems run clear @s snowball[custom_data~{bangsnap:1b}] 0

tag @s[scores={Money=200..,multiItems=..11}] add canBuySnaps

loot give @s[tag=canBuySnaps,team=Red] loot commands:shop_items/bang_snap_red

loot give @s[tag=canBuySnaps,team=Blue] loot commands:shop_items/bang_snap_blue

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{bangsnap:1b}] 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball[custom_data~{bangsnap:1b}] 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{bangsnap:1b}] 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball[custom_data~{bangsnap:1b}] 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{bangsnap:1b}] 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball[custom_data~{bangsnap:1b}] 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{bangsnap:1b}] 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball[custom_data~{bangsnap:1b}] 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball[custom_data~{bangsnap:1b}] 0

scoreboard players remove @s[tag=canBuySnaps] Money 200

tag @s remove canBuySnaps

