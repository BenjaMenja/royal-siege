execute if entity @s[team=Red] run summon minecraft:zombified_piglin ~ ~ ~ {DeathLootTable:"commands:s",Team:"Red",Health:40f,IsBaby:0b,AngerTime:2147483647,Tags:["security"],CustomName:'"Security Guard"',CustomNameVisible:0b,ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:iron_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1541130799,-1578940658,-1581365837,821814249],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjgyNGEwNWRkZDcwOTIyY2Q3ZTdhNzUzZjQyMWY2Y2MzZTQzMzRjODhkM2ZlMDdhOTA5ZjMxYzhhNTk5MDEzMyJ9fX0"}]}}}],attributes:[{id:attack_damage,base:12},{id:follow_range,base:99},{id:max_health,base:40},{id:movement_speed,base:0.35}]}

execute if entity @s[team=Blue] run summon minecraft:zombified_piglin ~ ~ ~ {DeathLootTable:"commands:s",Team:"Blue",Health:40f,IsBaby:0b,AngerTime:2147483647,Tags:["security"],CustomName:'"Security Guard"',CustomNameVisible:0b,ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:iron_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1541130799,-1578940658,-1581365837,821814249],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjgyNGEwNWRkZDcwOTIyY2Q3ZTdhNzUzZjQyMWY2Y2MzZTQzMzRjODhkM2ZlMDdhOTA5ZjMxYzhhNTk5MDEzMyJ9fX0"}]}}}],attributes:[{id:attack_damage,base:12},{id:follow_range,base:99},{id:max_health,base:40},{id:movement_speed,base:0.35}]}

clear @s carrot[custom_data~{securityguard:1b}] 1