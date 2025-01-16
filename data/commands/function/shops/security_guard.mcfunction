scoreboard players set #secGuardCount counter 0

execute if entity @s[team=Red] as @e[type=zombified_piglin,team=Red,tag=security] run scoreboard players add #secGuardCount counter 1

execute if entity @s[team=Blue] as @e[type=zombified_piglin,team=Blue,tag=security] run scoreboard players add #secGuardCount counter 1

execute store result score #secGuardItems counter run clear @s carrot[custom_data~{securityguard:1b}] 0

scoreboard players operation #secGuardCount counter += #secGuardItems counter

execute if score #secGuardCount counter matches 2.. run tellraw @s {"text":"You have too many security guards available!","color":"red"}

execute if score #secGuardCount counter matches 2.. run return -1

#Check passes, give them the item

loot give @s[scores={Money=600..}] loot commands:shop_items/security_guard

scoreboard players remove @s[scores={Money=600..}] Money 600