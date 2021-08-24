execute at @s[team=Red] if score #red corruptBank matches 1.. run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:27,corruptcredit:1b,display:{Name:'{"text":"Corrupt Credit"}',Lore:['{"text":"Spend These in a Mysterious Place for Helpful Items"}']}}}}

execute at @s[team=Blue] if score #blue corruptBank matches 1.. run summon item ~ ~1 ~ {Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:27,corruptcredit:1b,display:{Name:'{"text":"Corrupt Credit"}',Lore:['{"text":"Spend These in a Mysterious Place for Helpful Items"}']}}}}

execute at @s[team=Red] if score #red corruptBank matches ..0 run tellraw @s {"text":"You have no credits in your bank!","color":"red"}

execute at @s[team=Blue] if score #blue corruptBank matches ..0 run tellraw @s {"text":"You have no credits in your bank!","color":"red"}

execute if score #red corruptBank matches 1.. run scoreboard players remove #red corruptBank 1

execute if score #blue corruptBank matches 1.. run scoreboard players remove #blue corruptBank 1