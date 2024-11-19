execute if entity @s[team=Red] run summon minecraft:wither_skeleton ~ ~-10 ~ {Team:"Blue",PersistenceRequired:1b,Health:20f,Tags:["dummy"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;756769247,1745504945,-1659079847,-1314106020],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}],attributes:[{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0}]}

execute if entity @s[team=Blue] run summon minecraft:wither_skeleton ~ ~-10 ~ {Team:"Red",PersistenceRequired:1b,Health:20f,Tags:["dummy"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;756769247,1745504945,-1659079847,-1314106020],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}],attributes:[{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0}]}

execute as @e[type=wither_skeleton,tag=dummy,tag=!found] run data modify entity @s attributes[{id:"minecraft:max_health"}].base set from storage royalsiege:dummy_hp HP

execute as @e[type=wither_skeleton,tag=dummy,tag=!found] run data modify entity @s Health set from storage royalsiege:dummy_hp HP

execute if score #dummyLoc settings matches 1 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/ground

execute if score #dummyLoc settings matches 2 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/floating

execute if score #dummyLoc settings matches 3 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/raised_ground

execute if score #dummyLoc settings matches 4 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/bowling

tag @e[type=wither_skeleton,tag=dummy,tag=!found] add found
