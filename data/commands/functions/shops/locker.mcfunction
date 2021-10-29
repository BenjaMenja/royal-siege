tag @s add purchase

give @s[scores={Money=500..},team=Red,tag=purchase] bat_spawn_egg{CustomModelData:28,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Davy Jones\' Locker","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"A  \\"Locker\\" that traps people that"}','{"text":"get too close to it."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["LockerRed","Locker"]}} 1

give @s[scores={Money=500..},team=Blue,tag=purchase] bat_spawn_egg{CustomModelData:28,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Davy Jones\' Locker","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"A  \\"Locker\\" that traps people that"}','{"text":"get too close to it."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["LockerBlue","Locker"]}} 1

scoreboard players remove @s[scores={Money=500..}] Money 500

tag @s remove purchase