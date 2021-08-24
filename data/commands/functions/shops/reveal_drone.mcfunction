tag @s add purchase

give @s[scores={Money=300..},team=Red,tag=purchase] bat_spawn_egg{CustomModelData:38,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Reveal Drone","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Reveals and slows enemies in a"}','{"text":"medium-sized radius."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["Reveal"]}} 1

give @s[scores={Money=300..},team=Blue,tag=purchase] bat_spawn_egg{CustomModelData:38,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Reveal Drone","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Reveals and slows enemies in a"}','{"text":"medium-sized radius."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["RevealBlue"]}} 1

scoreboard players remove @s[scores={Money=300..}] Money 300

tag @s remove purchase