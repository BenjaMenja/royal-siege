execute if entity @s[team=Red] as @e[tag=OC,team=Red] run data merge entity @s {CustomNameVisible:1b,Tags:["WM","Minion"],CustomName:'{"text":"Wizard Minion"}',HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":2}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:10000,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.2}]}

execute if entity @s[team=Red] run tellraw @a [{"selector":"@a[scores={Ultimate=16},team=Red]"},{"text":"'s minions have calmed down!"}]

execute if entity @s[team=Red] run tag @e[tag=OC,team=Red] remove OC

execute if entity @s[team=Red] run scoreboard players reset @e[scores={OCTimer=600..},team=Red] OCTimer

execute if entity @s[team=Blue] as @e[tag=OC,team=Blue] run data merge entity @s {CustomNameVisible:1b,Tags:["WM","Minion"],CustomName:'{"text":"Wizard Minion"}',HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:sharpness":2}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":255}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:10000,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.movement_speed",Base:0.2}]}

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@a[scores={Ultimate=16},team=Blue]"},{"text":"'s minions have calmed down!"}]

execute if entity @s[team=Blue] run scoreboard players reset @e[scores={OCTimer=600..},team=Blue] OCTimer

execute if entity @s[team=Blue] run tag @e[tag=OC,team=Blue] remove OC