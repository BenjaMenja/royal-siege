execute store result score #rng RNG run random value 1..2

execute if score #rng RNG matches 1 if entity @s[tag=undeadArmyRed] run summon minecraft:zombie ~ ~ ~ {Team:"Red",Health:15f,IsBaby:0b,Tags:["undeadSpawn"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":16711680,"minecraft:unbreakable":{}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:15},{id:"minecraft:movement_speed",base:0.2}]}

execute if score #rng RNG matches 2 if entity @s[tag=undeadArmyRed] run summon minecraft:skeleton ~ ~ ~ {Team:"Red",Health:15f,Tags:["undeadSpawn"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":16711680,"minecraft:unbreakable":{}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:15},{id:"minecraft:movement_speed",base:0.2}]}

execute if score #rng RNG matches 1 if entity @s[tag=undeadArmyBlue] run summon minecraft:zombie ~ ~ ~ {Team:"Blue",Health:15f,IsBaby:0b,Tags:["undeadSpawn"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":1184511,"minecraft:unbreakable":{}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:15},{id:"minecraft:movement_speed",base:0.2}]}

execute if score #rng RNG matches 2 if entity @s[tag=undeadArmyBlue] run summon minecraft:skeleton ~ ~ ~ {Team:"Blue",Health:15f,Tags:["undeadSpawn"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":1184511,"minecraft:unbreakable":{}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:15},{id:"minecraft:movement_speed",base:0.2}]}

execute store result storage royalsiege:main undead_army_ypos double 1 run data get entity @s Pos[1]

execute as @n[tag=undeadSpawn,tag=!spread] at @s run function commands:ultimates/undead_army_spread with storage royalsiege:main

scoreboard players set @s undeadArmyTimer 0

