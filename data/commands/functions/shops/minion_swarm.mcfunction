tag @s add purchase

give @s[scores={Money=700..},team=Red,tag=purchase] bat_spawn_egg{CustomModelData:4,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Minion Swarm","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons a swarm of wizard minions."}']},HideFlags:16,EntityTag:{Silent:1b,Invulnerable:1b,Tags:["RedMinionSwarm","minionswarm"]}} 1

give @s[scores={Money=700..},team=Blue,tag=purchase] bat_spawn_egg{CustomModelData:4,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Minion Swarm","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons a swarm of wizard minions."}']},HideFlags:16,EntityTag:{Silent:1b,Invulnerable:1b,Tags:["BlueMinionSwarm","minionswarm"]}} 1

scoreboard players remove @s[scores={Money=700..}] Money 700

tag @s remove purchase