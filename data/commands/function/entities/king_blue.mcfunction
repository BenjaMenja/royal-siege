#Pirate Head King

execute if score #classicMap settings matches 2 run summon minecraft:wither_skeleton ~ ~ ~ {Team:"Blue",PersistenceRequired:1b,Health:1350f,Tags:["King"],CustomName:'"The King"',CustomNameVisible:0b,HandItems:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:knockback":5,"minecraft:sharpness":30}}}},{}],ArmorItems:[{id:"minecraft:golden_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_protection":5,"minecraft:projectile_protection":5}}}},{id:"minecraft:golden_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_protection":5}}}},{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_protection":5,"minecraft:projectile_protection":5}}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1835026790,1394887326,-2063864640,1772061555],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTNiZmY3MTAyOWE2YjNmZTI4NTk5MTA5MDhhMDU3ODhkNjMxZWI5ZTI2ZWJmZjhmZDM1OTZkNzY5MDI1OTgzYSJ9fX0="}]}}}],attributes:[{id:"knockback_resistance",base:1},{id:"max_health",base:1350},{id:"movement_speed",base:0}]}

#Other Kings

execute unless score #classicMap settings matches 2 run summon minecraft:wither_skeleton ~ ~ ~ {Team:"Blue",PersistenceRequired:1b,Health:1350f,Tags:["King"],CustomName:'"The King"',CustomNameVisible:0b,HandItems:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:knockback":5,"minecraft:sharpness":30}}}},{}],ArmorItems:[{id:"minecraft:golden_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_protection":5,"minecraft:projectile_protection":5}}}},{id:"minecraft:golden_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_protection":5}}}},{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_protection":5,"minecraft:projectile_protection":5}}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;756769247,1745504945,-1659079847,-1314106020],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}],attributes:[{id:"knockback_resistance",base:1},{id:"max_health",base:1350},{id:"movement_speed",base:0}]}