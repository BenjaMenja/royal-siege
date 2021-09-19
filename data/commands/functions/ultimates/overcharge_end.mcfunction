execute if entity @s[team=Red] as @e[tag=OC,team=Red] run data merge entity @s {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsVillager:0,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:leather_chestplate,tag:{display:{color:16711680}}},{}],HandItems:[{Count:1b,id:wooden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.movement_speed,Base:0.2},{Name:zombie.spawn_reinforcements,Base:0}],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Red] run tellraw @a [{"selector":"@a[scores={Ultimate=16},team=Red]"},{"text":"'s minions have calmed down!"}]

execute if entity @s[team=Red] run tag @e[tag=OC,team=Red] remove OC

execute if entity @s[team=Red] run scoreboard players reset @e[scores={OCTimer=600..},team=Red] OCTimer

execute if entity @s[team=Blue] as @e[tag=OC,team=Blue] run data merge entity @s {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsVillager:0,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:leather_chestplate,tag:{display:{color:1184511}}},{}],HandItems:[{Count:1b,id:wooden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.movement_speed,Base:0.2},{Name:zombie.spawn_reinforcements,Base:0}],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@a[scores={Ultimate=16},team=Blue]"},{"text":"'s minions have calmed down!"}]

execute if entity @s[team=Blue] run scoreboard players reset @e[scores={OCTimer=600..},team=Blue] OCTimer

execute if entity @s[team=Blue] run tag @e[tag=OC,team=Blue] remove OC