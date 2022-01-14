tag @s add purchase

give @s[scores={Money=250..},team=Red,tag=purchase] guardian_spawn_egg{CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Guardian Minion","italic":false}',Lore:['{"text":"Summons a guardian to fight for your team."}']},EntityTag:{Team:"Red",Health:35f,Attributes:[{Name:"minecraft:generic.max_health",Base:35},{Name:"minecraft:generic.attack_damage",Base:9}]}} 1

give @s[scores={Money=250..},team=Blue,tag=purchase] guardian_spawn_egg{CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Guardian Minion","italic":false}',Lore:['{"text":"Summons a guardian to fight for your team."}']},EntityTag:{Team:"Blue",Health:35f,Attributes:[{Name:"minecraft:generic.max_health",Base:35},{Name:"minecraft:generic.attack_damage",Base:9}]}} 1

scoreboard players remove @s[scores={Money=250..}] Money 250

tag @s remove purchase