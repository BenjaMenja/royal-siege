execute at @s[scores={Money=150..,Kit=1..6}] run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:gold_ingot",tag:{moneyitem:1b,Enchantments:[{}],HideFlags:1,CustomModelData:148,display:{Name:'{"text":"Siege Coin","color":"#FFCC00","italic":false}',Lore:['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}']}}},Health:1000}

execute at @s[scores={Money=200..,Kit=7}] run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:gold_ingot",tag:{moneyitem:1b,Enchantments:[{}],HideFlags:1,CustomModelData:148,display:{Name:'{"text":"Siege Coin","color":"#FFCC00","italic":false}',Lore:['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}']}}},Health:1000}

execute at @s[scores={Money=150..,Kit=8..13}] run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:gold_ingot",tag:{moneyitem:1b,Enchantments:[{}],HideFlags:1,CustomModelData:148,display:{Name:'{"text":"Siege Coin","color":"#FFCC00","italic":false}',Lore:['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}']}}},Health:1000}

tellraw @s[scores={Money=..149,Kit=1..6}] {"text":"You don't have enough money to do that!","color":"red"}

tellraw @s[scores={Money=..199,Kit=7}] {"text":"You don't have enough money to do that!","color":"red"}

tellraw @s[scores={Money=..149,Kit=8..13}] {"text":"You don't have enough money to do that!","color":"red"}

scoreboard players remove @s[scores={Money=150..,Kit=1..6}] Money 150

scoreboard players remove @s[scores={Money=200..,Kit=7}] Money 200

scoreboard players remove @s[scores={Money=150..,Kit=8..13}] Money 150
