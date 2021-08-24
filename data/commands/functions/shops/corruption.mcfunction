tag @s add purchase

give @s[team=Red,tag=purchase,scores={Money=500..}] minecraft:bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Corruption","color":"#020678","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Corrupts all players with corrupt credits in their inventory."}','{"text":"Corrupted players are much more powerful, but are rather unstable."}','{"text":"This ability affects all players, including enemies."}']},HideFlags:16,CustomModelData:114,corruptionred:1b,EntityTag:{Tags:["corruptionred","corruption"]}} 1

give @s[team=Blue,tag=purchase,scores={Money=500..}] minecraft:bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Corruption","color":"#020678","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Corrupts all players with corrupt credits in their inventory."}','{"text":"Corrupted players are much more powerful, but are rather unstable."}','{"text":"This ability affects all players, including enemies."}']},HideFlags:16,CustomModelData:114,corruptionblue:1b,EntityTag:{Tags:["corruptionblue","corruption"]}} 1

scoreboard players remove @s[scores={Money=500..}] Money 500

tag @s remove purchase