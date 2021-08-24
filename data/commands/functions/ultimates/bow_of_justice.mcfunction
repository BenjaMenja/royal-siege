tag @s add justiceKill

give @s bow{CustomModelData:73,display:{Name:'{"text":"Bow of Justice"}',Lore:['{"text":"One shots nearly anything."}','{"text":"Can only be used once and can be deflected by shields."}','{"text":"Also cannot be used near a king."}','{"text":"If you kill a player with this, you will get the bow of justice back."}']},HideFlags:33,Damage:384,bowofjustice:1b,Enchantments:[{id:"minecraft:power",lvl:100s},{id:"minecraft:infinity",lvl:1s}]} 1

scoreboard players set @s jKillTimer 0

advancement revoke @s only commands:bow_of_justice