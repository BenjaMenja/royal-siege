tag @s add purchase

give @s[scores={Money=400..},tag=purchase,team=Red] bat_spawn_egg{HideFlags:16,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Poisonous Mushroom","color":"#4F0FFF","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Creates a poison cloud when placed."}','{"text":"The cloud grows in size if a player stands in it."}']},CustomModelData:33,poisonousmushroom:1b,EntityTag:{Tags:["redmushroom"]}} 2

give @s[scores={Money=400..},tag=purchase,team=Blue] bat_spawn_egg{HideFlags:16,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Poisonous Mushroom","color":"#4F0FFF","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Creates a poison cloud when placed."}','{"text":"The cloud grows in size if a player stands in it."}']},CustomModelData:33,poisonousmushroom:1b,EntityTag:{Tags:["bluemushroom"]}} 2

scoreboard players remove @s[scores={Money=400..}] Money 400

tag @s remove purchase

