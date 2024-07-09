execute at @s[tag=AIred] run summon minecraft:zombie ~ ~ ~ {Silent:1b,CustomNameVisible:1b,Team:"Red",Health:50f,IsBaby:0b,Tags:["AI"],CustomName:'{"text":"Artificial Intelligence"}',HandItems:[{id:"minecraft:shears",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":3,"minecraft:knockback":1,"minecraft:sharpness":16}}}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1,"minecraft:fire_protection":1,"minecraft:projectile_protection":1,"minecraft:protection":1}}}},{id:"minecraft:iron_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1,"minecraft:fire_protection":1,"minecraft:projectile_protection":1,"minecraft:protection":1}},"minecraft:attribute_modifiers":[{type:"generic.armor",name:"generic.armor",amount:6,operation:"add_value",uuid:[I;-213315457,94849237,-1752063373,1376514130],slot:"legs"},{type:"generic.movement_speed",name:"generic.movement_speed",amount:0.4,operation:"add_multiplied_base",uuid:[I;883271119,-670350122,-1182077714,-43684262],slot:"legs"}]}},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1,"minecraft:fire_protection":1,"minecraft:projectile_protection":1,"minecraft:protection":1}}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1480412057,1055868252,-2014404675,-1826876382],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzZGRkN2Y4MTA4OWM4NWIyNmVkNTk3Njc1NTE5ZjAzYTFkY2Q2ZDE3MTNlMGNmYzY2YWZiODc0M2NiZTAifX19"}]}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:100000,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:50}]}

execute at @s[tag=AIred] run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;0]}]}}}}

execute at @s[tag=AIred] run summon lightning_bolt ~ ~ ~

execute at @s[tag=AIred] run tellraw @a [{"selector":"@a[team=Red,scores={Kit=10,Ultimate=20}]"},{"text":" has constructed artificial intelligence!","color":"white"}]

execute at @s[tag=AIblue] run summon minecraft:zombie ~ ~ ~ {Silent:1b,CustomNameVisible:1b,Team:"Blue",Health:50f,IsBaby:0b,Tags:["AI"],CustomName:'{"text":"Artificial Intelligence"}',HandItems:[{id:"minecraft:shears",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":3,"minecraft:knockback":1,"minecraft:sharpness":16}}}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1,"minecraft:fire_protection":1,"minecraft:projectile_protection":1,"minecraft:protection":1}}}},{id:"minecraft:iron_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1,"minecraft:fire_protection":1,"minecraft:projectile_protection":1,"minecraft:protection":1}},"minecraft:attribute_modifiers":[{type:"generic.armor",name:"generic.armor",amount:6,operation:"add_value",uuid:[I;806486764,-2084548692,-2090182258,1851098434],slot:"legs"},{type:"generic.movement_speed",name:"generic.movement_speed",amount:0.4,operation:"add_multiplied_base",uuid:[I;-365544448,341265985,-1985648614,1249040413],slot:"legs"}]}},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1,"minecraft:fire_protection":1,"minecraft:projectile_protection":1,"minecraft:protection":1}}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1480412057,1055868252,-2014404675,-1826876382],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmYzZGRkN2Y4MTA4OWM4NWIyNmVkNTk3Njc1NTE5ZjAzYTFkY2Q2ZDE3MTNlMGNmYzY2YWZiODc0M2NiZTAifX19"}]}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:100000,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:50}]}

execute at @s[tag=AIblue] run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;0]}]}}}}

execute at @s[tag=AIblue] run summon lightning_bolt ~ ~ ~

execute at @s[tag=AIblue] run tellraw @a [{"selector":"@a[team=Blue,scores={Kit=10,Ultimate=20}]"},{"text":" has constructed artificial intelligence!","color":"white"}]

execute if entity @s[tag=AIred] run scoreboard players add @a[team=Red,scores={Kit=10,Ultimate=20}] ultsUsed 1

execute if entity @s[tag=AIblue] run scoreboard players add @a[team=Blue,scores={Kit=10,Ultimate=20}] ultsUsed 1

tp @s ~ -200 ~