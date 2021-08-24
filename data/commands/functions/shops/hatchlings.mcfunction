tag @s add purchase

give @s[team=Red,tag=purchase,scores={Money=400..}] minecraft:bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Hatchlings","color":"#4300A8","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Spawns 3 hatchling minions that chase enemies."}','{"text":"Up to 10 can exist at once."}']},HideFlags:16,CustomModelData:112,hatchlingsred:1b,EntityTag:{Tags:["hatchlingsred","hatchlings"]}} 1

give @s[team=Blue,tag=purchase,scores={Money=400..}] minecraft:bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Hatchlings","color":"#4300A8","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Spawns 3 hatchling minions that chase enemies."}','{"text":"Up to 10 can exist at once."}']},HideFlags:16,CustomModelData:112,hatchlingsblue:1b,EntityTag:{Tags:["hatchlingsblue","hatchlings"]}} 1

scoreboard players remove @s[scores={Money=400..}] Money 400

tag @s remove purchase