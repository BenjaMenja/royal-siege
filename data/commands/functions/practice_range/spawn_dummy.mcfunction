execute if entity @s[team=Red] run summon wither_skeleton ~ ~-10 ~ {Tags:["dummy"],Team:"Blue",PersistenceRequired:1b,Health:20f,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{id:[I;756769247,1745504945,-1659079847,-1314106020],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}}],Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1},{Name:"minecraft:generic.movement_speed",Base:-1}]}

execute if entity @s[team=Blue] run summon wither_skeleton ~ ~-10 ~ {Tags:["dummy"],Team:"Red",PersistenceRequired:1b,Health:20f,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{id:[I;756769247,1745504945,-1659079847,-1314106020],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}}],Attributes:[{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1},{Name:"minecraft:generic.movement_speed",Base:-1}]}

execute as @e[type=wither_skeleton,tag=dummy,tag=!found] run data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from storage royalsiege:dummy_hp HP

execute as @e[type=wither_skeleton,tag=dummy,tag=!found] run data modify entity @s Health set from storage royalsiege:dummy_hp HP

execute if score #dummyLoc settings matches 1 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/ground

execute if score #dummyLoc settings matches 2 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/floating

execute if score #dummyLoc settings matches 3 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/raised_ground

execute if score #dummyLoc settings matches 4 as @e[type=wither_skeleton,tag=dummy,tag=!found] run function commands:practice_range/dummy/bowling

tag @e[type=wither_skeleton,tag=dummy,tag=!found] add found
