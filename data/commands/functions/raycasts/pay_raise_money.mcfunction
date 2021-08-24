execute store result score #healthNew healthVar run scoreboard players get @s Health
execute at @s if score #healthNew healthVar > #healthOld healthVar run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:gold_ingot",tag:{moneyitem:1b,Enchantments:[{}],HideFlags:1,CustomModelData:148,display:{Name:'{"text":"Siege Coin","color":"#FFCC00","italic":false}',Lore:['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}']}}},Health:1000}
scoreboard players reset #healthOld healthVar
scoreboard players reset #healthNew healthVar
