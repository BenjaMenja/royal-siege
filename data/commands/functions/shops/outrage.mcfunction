tag @s add purchase

give @s[team=Red,tag=purchase,scores={Money=500..}] minecraft:bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Outrage","color":"#B74AFF","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Fly into a rage, increasing your damage and speed for 8 seconds."}','{"text":"Failure to land a killing blow for the duration will stun you, hindering your movement and damage."}']},CustomModelData:111,outragered:1b,EntityTag:{Tags:["outragered"]}} 1

give @s[team=Blue,tag=purchase,scores={Money=500..}] minecraft:bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Outrage","color":"#B74AFF","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Fly into a rage, increasing your damage and speed for 8 seconds."}','{"text":"Failure to land a killing blow for the duration will stun you, hindering your movement and damage."}']},CustomModelData:111,outrageblue:1b,EntityTag:{Tags:["outrageblue"]}} 1

scoreboard players remove @s[scores={Money=500..}] Money 500

tag @s remove purchase