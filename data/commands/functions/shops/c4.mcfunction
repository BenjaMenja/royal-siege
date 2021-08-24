tag @s add purchase

give @s[team=Red,tag=purchase,scores={Money=300..}] bat_spawn_egg{CustomModelData:39,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"C4","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Plants a c4 explosive on the ground."}','{"text":"The c4 can be detonated with the detonator."}','{"text":"The explosion can damage everything, including teammates."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["c4"]},cfour:1b} 1

give @s[team=Blue,tag=purchase,scores={Money=300..}] bat_spawn_egg{CustomModelData:39,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"C4","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Plants a c4 explosive on the ground."}','{"text":"The c4 can be detonated with the detonator."}','{"text":"The explosion can damage everything, including teammates."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["c4blue"]},cfourblue:1b} 1

clear @s[tag=purchase,team=Red,scores={Money=300..}] carrot_on_a_stick{detonatorRed:1b}

clear @s[tag=purchase,team=Blue,scores={Money=300..}] carrot_on_a_stick{detonatorBlue:1b}

give @s[tag=purchase,team=Red,scores={Money=300..}] carrot_on_a_stick{CustomModelData:40,display:{Name:'{"text":"Detonator","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Detonates all active C4."}']},HideFlags:1,Enchantments:[{}],detonatorRed:1b} 1

give @s[tag=purchase,team=Blue,scores={Money=300..}] carrot_on_a_stick{CustomModelData:40,display:{Name:'{"text":"Detonator","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Detonates all active C4."}']},HideFlags:1,Enchantments:[{}],detonatorBlue:1b} 1

scoreboard players remove @s[scores={Money=300..}] Money 300

tag @s remove purchase