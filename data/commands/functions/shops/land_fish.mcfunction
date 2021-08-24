tag @s add purchase

give @s[tag=purchase,scores={Money=300..},team=Red] minecraft:silverfish_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Land Fish","color":"#787577","italic":false}',Lore:['{"text":"A simple land fish to annoy your enemies."}']},HideFlags:16,landfishred:1b,EntityTag:{CustomNameVisible:1b,Team:"Red",Health:20f,Tags:["landfish"],CustomName:'{"text":"Land Fish","color":"red"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:4s}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:99},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:8}]}} 1

give @s[tag=purchase,scores={Money=300..},team=Blue] minecraft:silverfish_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Land Fish","color":"#787577","italic":false}',Lore:['{"text":"A simple land fish to annoy your enemies."}']},HideFlags:16,landfishblue:1b,EntityTag:{CustomNameVisible:1b,Team:"Blue",Health:20f,Tags:["landfish"],CustomName:'{"text":"Land Fish","color":"blue"}',HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:4s}]}},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:99},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.attack_damage,Base:8}]}} 1

scoreboard players remove @s[tag=purchase,scores={Money=300..}] Money 300

tag @s remove purchase