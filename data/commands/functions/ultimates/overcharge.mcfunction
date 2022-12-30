execute if entity @s[team=Red] run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16711680}}},{}],HandItems:[{Count:1b,id:"wooden_sword",tag:{Enchantments:[{id:"sharpness",lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.3},{Name:"zombie.spawn_reinforcements",Base:0}],Health:15.0f,Team:"Red",ActiveEffects:[{Id:12,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Red] run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16711680}}},{}],HandItems:[{Count:1b,id:"wooden_sword",tag:{Enchantments:[{id:"sharpness",lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.3},{Name:"zombie.spawn_reinforcements",Base:0}],Health:15.0f,Team:"Red",ActiveEffects:[{Id:12,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Red] run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:16711680}}},{}],HandItems:[{Count:1b,id:"wooden_sword",tag:{Enchantments:[{id:"sharpness",lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.3},{Name:"zombie.spawn_reinforcements",Base:0}],Health:15.0f,Team:"Red",ActiveEffects:[{Id:12,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Blue] run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:1184511}}},{}],HandItems:[{Count:1b,id:"wooden_sword",tag:{Enchantments:[{id:"sharpness",lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.3},{Name:"zombie.spawn_reinforcements",Base:0}],Health:15.0f,Team:"Blue",ActiveEffects:[{Id:12,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Blue] run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:1184511}}},{}],HandItems:[{Count:1b,id:"wooden_sword",tag:{Enchantments:[{id:"sharpness",lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.3},{Name:"zombie.spawn_reinforcements",Base:0}],Health:15.0f,Team:"Blue",ActiveEffects:[{Id:12,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Blue] run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:"leather_chestplate",tag:{display:{color:1184511}}},{}],HandItems:[{Count:1b,id:"wooden_sword",tag:{Enchantments:[{id:"sharpness",lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.3},{Name:"zombie.spawn_reinforcements",Base:0}],Health:15.0f,Team:"Blue",ActiveEffects:[{Id:12,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute as @s[team=Red] run tag @e[type=zombie,tag=WM,team=Red] add overcharge

execute as @s[team=Blue] run tag @e[type=zombie,tag=WM,team=Blue] add overcharge

execute at @s run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 0

tellraw @a [{"selector":"@s"},{"text":"'s minions are pulsing with energy!"}]

clear @s carrot_on_a_stick{overcharge:1b}
