
#Dungeon Villagers

execute store result score #rng RNG run random roll 1..8

execute if score #rng RNG matches 1 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:lily_pad",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Slapper"}',"minecraft:custom_model_data":85,"minecraft:enchantments":{levels:{"minecraft:knockback":6}}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:water_bucket",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Boiling Water"}',"minecraft:custom_model_data":84,"minecraft:enchantments":{levels:{"minecraft:fire_aspect":3}}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Mysterious Brew"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"Throws a mysterious potion that inflicts random debuffs onto enemies."}'],"minecraft:custom_model_data":95,"minecraft:custom_data":{mysteriousbrew:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}}]}}

execute if score #rng RNG matches 1 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:lily_pad",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Slapper"}',"minecraft:custom_model_data":85,"minecraft:enchantments":{levels:{"minecraft:knockback":6}}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:water_bucket",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Boiling Water"}',"minecraft:custom_model_data":84,"minecraft:enchantments":{levels:{"minecraft:fire_aspect":3}}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Mysterious Brew"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"Throws a mysterious potion that inflicts random debuffs onto enemies."}'],"minecraft:custom_model_data":95,"minecraft:custom_data":{mysteriousbrew:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}}]}}

execute if score #rng RNG matches 2 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:5,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:item_name":'{"color":"green","italic":false,"text":"Second Chance"}',"minecraft:custom_model_data":86}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}]},"minecraft:item_name":'{"color":"aqua","italic":false,"text":"Cryo Skeleton"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Summons a cryo skeleton to join you in battle."}','{"text":"The skeleton slows and lowers the jump height of struck enemies."}'],"minecraft:custom_model_data":22,"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Tags:["cryoskeleton","cryoskeletonred"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:potato",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Super Spud"}',"minecraft:attribute_modifiers":[{type:"attack_damage",id:"827d8894-eedc-47e2-a825-37d5585fa913",amount:0.15,operation:"add_multiplied_base",slot:"offhand"}]}}}]}}

execute if score #rng RNG matches 2 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:5,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:item_name":'{"color":"green","italic":false,"text":"Second Chance"}',"minecraft:custom_model_data":86}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}]},"minecraft:item_name":'{"color":"aqua","italic":false,"text":"Cryo Skeleton"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Summons a cryo skeleton to join you in battle."}','{"text":"The skeleton slows and lowers the jump height of struck enemies."}'],"minecraft:custom_model_data":22,"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Tags:["cryoskeleton","cryoskeletonblue"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:potato",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Super Spud"}',"minecraft:attribute_modifiers":[{type:"attack_damage",id:"827d8894-eedc-47e2-a825-37d55880c913",amount:0.15,operation:"add_multiplied_base",slot:"offhand"}]}}}]}}

execute if score #rng RNG matches 3 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:snowball",count:2,components:{"minecraft:custom_name":'{"text":"Grounding Spell","italic": false}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Throwable"}','{"text":" "}','{"text":"Throws a spell that prevents nearby enemies from jumping for a short time."}'],"minecraft:custom_model_data":195,"minecraft:custom_data":{groundingspell:1b,groundingspellred:1b}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:wooden_shovel",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"The Spoon"}',"minecraft:lore":['{"text":" "}','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":" 11 Attack Damage"}','{"color":"dark_green","italic":false,"text":" 1.1 Attack Speed"}'],"minecraft:unbreakable":{},"minecraft:custom_model_data":87,"minecraft:attribute_modifiers":{modifiers:[{type:"attack_damage",amount:11,operation:"add_value",id:"6c512ce9-f2fd-48d2-8747-8091b466cbc0",slot:"mainhand"},{type:"attack_speed",amount:-2.9,operation:"add_value",id:"827d8894-7780-47e2-a825-37d5585fa913",slot:"mainhand"}],show_in_tooltip:false}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:4,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'{"text":"TNT Bow","italic": false}',"minecraft:lore":['{"text":"Shoots arrows that explode upon contact with an enemy player."}'],"minecraft:unbreakable":{},"minecraft:custom_model_data":88,"minecraft:custom_data":{tntbow:1b},"minecraft:enchantments":{levels:{"minecraft:power":1,"minecraft:infinity":1}}}}}]}}

execute if score #rng RNG matches 3 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:snowball",count:2,components:{"minecraft:custom_name":'{"text":"Grounding Spell","italic": false}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Throwable"}','{"text":" "}','{"text":"Throws a spell that prevents nearby enemies from jumping for a short time."}'],"minecraft:custom_model_data":195,"minecraft:custom_data":{groundingspell:1b,groundingspellblue:1b}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:wooden_shovel",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"The Spoon"}',"minecraft:lore":['{"text":" "}','{"color":"gray","italic":false,"text":"When in Main Hand:"}','{"color":"dark_green","italic":false,"text":" 11 Attack Damage"}','{"color":"dark_green","italic":false,"text":" 1.1 Attack Speed"}'],"minecraft:unbreakable":{},"minecraft:custom_model_data":87,"minecraft:attribute_modifiers":{modifiers:[{type:"attack_damage",amount:11,operation:"add_value",id:"9fc42f56-69db-4b8f-9b26-5f4e0c6335f6",slot:"mainhand"},{type:"attack_speed",amount:-2.9,operation:"add_value",id:"82790cc4-eedc-47e2-a825-37d5515fa913",slot:"mainhand"}],show_in_tooltip:false}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:4,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'{"text":"TNT Bow","italic": false}',"minecraft:lore":['{"text":"Shoots arrows that explode upon contact with an enemy player."}'],"minecraft:unbreakable":{},"minecraft:custom_model_data":88,"minecraft:custom_data":{tntbow:1b},"minecraft:enchantments":{levels:{"minecraft:power":1,"minecraft:infinity":1}}}}}]}}

execute if score #rng RNG matches 4 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"text":"Corrupt Credit","italic": false}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"italic":false,"text":"Mimic"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Spawn in a hungry chest to eat enemies."}','{"text":"Can be destroyed if it takes sufficient damage."}'],"minecraft:custom_model_data":21,"minecraft:custom_data":{mimic:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Tags:["mimic","mimicred"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"text":"Corrupt Credit","italic": false}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Damage Cloud"}',"minecraft:lore":['{"text":"Could also be used to heal your king."}'],"minecraft:potion_contents":{custom_color:0,custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:40}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"text":"Corrupt Credit","italic": false}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"italic":false,"text":"Temporary Wall"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Summons a temporary wall along the x-axis to block out everyone."}','{"text":"Lasts 8 seconds."}'],"minecraft:custom_model_data":24,"minecraft:custom_data":{temporarywall:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Tags:["wall","wallred"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}}]}}

execute if score #rng RNG matches 4 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"text":"Corrupt Credit","italic": false}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"italic":false,"text":"Mimic"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Spawn in a hungry chest to eat enemies."}','{"text":"Can be destroyed if it takes sufficient damage."}'],"minecraft:custom_model_data":21,"minecraft:custom_data":{mimic:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Tags:["mimic","mimicblue"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"text":"Corrupt Credit","italic": false}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Damage Cloud"}',"minecraft:lore":['{"text":"Could also be used to heal your king."}'],"minecraft:potion_contents":{custom_color:0,custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:40}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"text":"Corrupt Credit","italic": false}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"italic":false,"text":"Temporary Wall"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Summons a temporary wall along the x-axis to block out everyone."}','{"text":"Lasts 8 seconds."}'],"minecraft:custom_model_data":24,"minecraft:custom_data":{temporarywall:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Tags:["wall","wallblue"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}}]}}

execute if score #rng RNG matches 5 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:gold_ingot",count:3,components:{"minecraft:custom_name":'{"color":"#FFCC00","italic":false,"text":"Siege Coin"}',"minecraft:lore":['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}'],"minecraft:custom_model_data":148,"minecraft:custom_data":{moneyitem:1b},"minecraft:enchantment_glint_override":true}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"text":"Exp. Bomb Spawner","italic": false}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Places a spawner that throws death into the sky."}'],"minecraft:custom_model_data":26,"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["xpspawner"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Power Fruit"}',"minecraft:custom_model_data":89,"minecraft:attribute_modifiers":[{type:"max_health",amount:9,operation:"add_value",id:"827d80b4-eedc-47e2-a825-a7d4185fb913",slot:"offhand"}]}}}]}}

execute if score #rng RNG matches 5 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:gold_ingot",count:3,components:{"minecraft:custom_name":'{"color":"#FFCC00","italic":false,"text":"Siege Coin"}',"minecraft:lore":['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}'],"minecraft:custom_model_data":148,"minecraft:custom_data":{moneyitem:1b},"minecraft:enchantment_glint_override":true}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"text":"Exp. Bomb Spawner","italic": false}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Places a spawner that throws death into the sky."}'],"minecraft:custom_model_data":26,"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["xpspawner"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Power Fruit"}',"minecraft:custom_model_data":89,"minecraft:attribute_modifiers":[{type:"max_health",amount:9,operation:"add_value",id:"827d8894-eedc-47e2-a825-37dddd0fa913",slot:"offhand"}]}}}]}}

execute if score #rng RNG matches 6 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Growth Injection"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Droppable"}','{"text":" "}','{"text":"Drop onto a friendly summon to increase their scale and give them a slight damage boost."}'],"minecraft:custom_model_data":34,"minecraft:custom_data":{growthinjection:1b,growthinjectionred:1b}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"B I G Ingot"}',"minecraft:lore":['{"text":"So heavy, you become immovable to others."}'],"minecraft:custom_model_data":90,"minecraft:enchantments":{levels:{"minecraft:thorns":1}},"minecraft:attribute_modifiers":[{type:"knockback_resistance",amount:1,operation:"add_multiplied_base",id:"827d8894-eedc-47e2-a8a1-34d561efa913",slot:"offhand"},{type:"movement_speed",amount:-0.3,operation:"add_multiplied_base",id:"cf8220f3-d706-406c-9828-ffa47e6915b8",slot:"offhand"}]}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:skeleton_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"italic":false,"text":"Home Defender"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Defends your castle without your help."}'],"minecraft:entity_data":{id:"minecraft:skeleton",Team:"Red",Health:40f,Tags:["homedefender","homedefenderred"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":5}}}},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:blindness",amplifier:0,duration:80,show_particles:0b}]}}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":10,"minecraft:projectile_protection":10}},"minecraft:attribute_modifiers":[{type:"knockback_resistance",amount:1,operation:"add_multiplied_base",id:"cf823d63-d706-406c-9828-f0cce34562c8",slot:"chest"},{type:"movement_speed",amount:-0.8,operation:"add_multiplied_base",id:"cf823d63-d7d6-4110-9828-ffa47e6915b8",slot:"chest"}]}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:unbreakable":{}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],attributes:[{id:max_health,base:40}]}}}}]}}

execute if score #rng RNG matches 6 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:lime_dye",count:1,components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Growth Injection"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Droppable"}','{"text":" "}','{"text":"Drop onto a friendly summon to increase their scale and give them a slight damage boost."}'],"minecraft:custom_model_data":34,"minecraft:custom_data":{growthinjection:1b,growthinjectionblue:1b}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"B I G Ingot"}',"minecraft:lore":['{"text":"So heavy, you become immovable to others."}'],"minecraft:custom_model_data":90,"minecraft:enchantments":{levels:{"minecraft:thorns":1}},"minecraft:attribute_modifiers":[{type:"knockback_resistance",amount:1,operation:"add_multiplied_base",id:"cf823d63-d706-406c-9828-ffa47e6915b8",slot:"offhand"},{type:"movement_speed",amount:-0.3,operation:"add_multiplied_base",id:"cf667d63-d706-406c-9828-ffa47e61f5b8",slot:"offhand"}]}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:skeleton_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"italic":false,"text":"Home Defender"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Defends your castle without your help."}'],"minecraft:entity_data":{id:"minecraft:skeleton",Team:"Blue",Health:40f,Tags:["homedefender","homedefenderblue"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":5}}}},{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:blindness",amplifier:0,duration:80,show_particles:0b}]}}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":10,"minecraft:projectile_protection":10}},"minecraft:attribute_modifiers":[{type:"knockback_resistance",amount:1,operation:"add_multiplied_base",id:"cf821f63-d706-406c-9828-ffa47e6915b8",slot:"chest"},{type:"movement_speed",amount:-0.8,operation:"add_multiplied_base",id:"cfd03d63-dd24-406c-9828-ffa47e6915b8",slot:"chest"}]}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:unbreakable":{}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],attributes:[{id:max_health,base:40}]}}}}]}}

execute if score #rng RNG matches 7 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483646,uses:0,buy:{id:"minecraft:ender_eye",count:6,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"color":"#36B5FF","italic":false,"text":"Ultimate Charger"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"Fully charges your ultimate."}'],"minecraft:custom_model_data":49,"minecraft:custom_data":{ultimatecharger:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}},{rewardExp:0b,maxUses:2147483646,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"color":"#917853","italic":false,"text":"The Watcher"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":" Sends an alert to your team whenever an enemy walks into its radius."}','{"text":"Has a maximum range of 10 blocks."}','{"text":"Lasts 1 minute, and can be destroyed if it takes sufficient damage."}'],"minecraft:custom_model_data":50,"minecraft:custom_data":{watcherred:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["watcher","watcherred"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483646,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"color":"#FF03E6","italic":false,"text":"The Attractor"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Forces enemies to look at it if they are within its radius."}','{"text":"Has a maximum range of 10 blocks."}','{"text":"Lasts 1 minute, and can be destroyed if it takes sufficient damage."}'],"minecraft:custom_model_data":51,"minecraft:custom_data":{attractorred:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["attractor","attractorred"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}}]}}

execute if score #rng RNG matches 7 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483646,uses:0,buy:{id:"minecraft:ender_eye",count:6,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"color":"#36B5FF","italic":false,"text":"Ultimate Charger"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"Fully charges your ultimate."}'],"minecraft:custom_model_data":49,"minecraft:custom_data":{ultimatecharger:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}},{rewardExp:0b,maxUses:2147483646,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"color":"#917853","italic":false,"text":"The Watcher"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":" Sends an alert to your team whenever an enemy walks into its radius."}','{"text":"Has a maximum range of 10 blocks."}','{"text":"Lasts 1 minute, and can be destroyed if it takes sufficient damage."}'],"minecraft:custom_model_data":50,"minecraft:custom_data":{watcherblue:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["watcher","watcherblue"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}},{rewardExp:0b,maxUses:2147483646,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:bat_spawn_egg",count:1,components:{"minecraft:can_place_on":{predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},"minecraft:custom_name":'{"color":"#FF03E6","italic":false,"text":"The Attractor"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Placeable"}','{"text":" "}','{"text":"Forces enemies to look at it if they are within its radius."}','{"text":"Has a maximum range of 10 blocks."}','{"text":"Lasts 1 minute, and can be destroyed if it takes sufficient damage."}'],"minecraft:custom_model_data":51,"minecraft:custom_data":{attractorblue:1b},"minecraft:entity_data":{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["attractor","attractorblue"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000,show_particles:0b}]}}}}]}}

execute if score #rng RNG matches 8 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Red",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"Castle Chain"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"Forms a long chain connecting your castle to the enemy\'s"}','{"text":"Lasts 30 seconds."}'],"minecraft:custom_model_data":127,"minecraft:custom_data":{castlechain:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Gold Magnet"}',"minecraft:lore":['{"text":"Magnetizes all siege coins towards you when in your inventory."}','{"text":"Filters out fake money, leaving it on the ground."}'],"minecraft:custom_model_data":128,"minecraft:custom_data":{goldmagnet:1b}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"color":"dark_red","italic":false,"text":"Killer King"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"When used, your king\'s next attack will deal tremendous amounts of damage."}'],"minecraft:custom_model_data":129,"minecraft:custom_data":{killerking:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}}]}}

execute if score #rng RNG matches 8 run summon minecraft:villager -1215 54 1260 {Invulnerable:1b,Team:"Blue",PersistenceRequired:1b,CustomName:'{"text":"Mysterious Man"}',attributes:[{id:movement_speed,base:0}],VillagerData:{level:2,profession:"minecraft:farmer",type:"minecraft:plains"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"Castle Chain"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"Forms a long chain connecting your castle to the enemy\'s"}','{"text":"Lasts 30 seconds."}'],"minecraft:custom_model_data":127,"minecraft:custom_data":{castlechain:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:3,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Gold Magnet"}',"minecraft:lore":['{"text":"Magnetizes all siege coins towards you when in your inventory."}','{"text":"Filters out fake money, leaving it on the ground."}'],"minecraft:custom_model_data":128,"minecraft:custom_data":{goldmagnet:1b}}}},{rewardExp:0b,maxUses:2147483647,uses:0,buy:{id:"minecraft:ender_eye",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Corrupt Credit"}',"minecraft:custom_model_data":27}},sell:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_name":'{"color":"dark_red","italic":false,"text":"Killer King"}',"minecraft:lore":['{"color":"yellow","italic":false,"text":"Right-click to use"}','{"text":" "}','{"text":"When used, your king\'s next attack will deal tremendous amounts of damage."}'],"minecraft:custom_model_data":129,"minecraft:custom_data":{killerking:1b},"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}}}}]}}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tp @e[type=villager,team=Red] -20 25 -145

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tp @e[type=villager,team=Blue] -18 25 -145

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tp @e[type=villager,team=Red] 103 53 -1060

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tp @e[type=villager,team=Blue] 83 53 -1080

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 run tp @e[type=villager,team=Red] 96 56 -1971

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 run tp @e[type=villager,team=Blue] -58 56 1971

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 run tp @e[type=villager,team=Red] 1086 53 -59

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 run tp @e[type=villager,team=Blue] 1015 53 -63

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 run tp @e[type=villager,team=Red] 2043 106 -33

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 run tp @e[type=villager,team=Blue] 1974 106 33

scoreboard players reset #rng RNG