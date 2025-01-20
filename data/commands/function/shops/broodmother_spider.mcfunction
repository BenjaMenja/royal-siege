execute if entity @s[team=Red] if entity @n[type=spider,tag=broodmotherspider,team=Red] run tellraw @s {"text":"You already have a Broodmother Spider active!","color":"red"}

execute if entity @s[team=Red] if entity @n[type=spider,tag=broodmotherspider,team=Red] run return -1

execute if entity @s[team=Blue] if entity @n[type=spider,tag=broodmotherspider,team=Blue] run tellraw @s {"text":"You already have a Broodmother Spider active!","color":"red"}

execute if entity @s[team=Blue] if entity @n[type=spider,tag=broodmotherspider,team=Blue] run return -1

execute if entity @s[predicate=commands:inventory/broodmother_spider] run tellraw @s {"text":"You already have a Broodmother Spider active!","color":"red"}

execute if entity @s[predicate=commands:inventory/broodmother_spider] run return -1

loot give @s[scores={Money=700..}] loot commands:shop_items/broodmother_spider

scoreboard players remove @s[scores={Money=700..}] Money 700