execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon item 9 53 -132 {Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:27,corruptcredit:1b,display:{Name:'{"text":"Corrupt Credit"}',Lore:['{"text":"Spend These in a Mysterious Place for Helpful Items"}']}}}}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon item 58 52 -1030 {Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:27,corruptcredit:1b,display:{Name:'{"text":"Corrupt Credit"}',Lore:['{"text":"Spend These in a Mysterious Place for Helpful Items"}']}}}}

execute if score #gamemode settings matches 1 run summon item 1051 53 -76 {Item:{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:27,corruptcredit:1b,display:{Name:'{"text":"Corrupt Credit"}',Lore:['{"text":"Spend These in a Mysterious Place for Helpful Items"}']}}}}

scoreboard players set #corrupt Timer 0