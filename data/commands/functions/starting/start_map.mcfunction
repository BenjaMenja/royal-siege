
#Dungeon Villagers

function commands:starting/spawn_dungeon_villagers

#Rest of the Start of the Map

function commands:command_chunk/command_chunk_delayed

teleport @e[type=skeleton] ~ -100 ~

teleport @e[type=zombie] ~ -100 ~

teleport @e[type=item] ~ -100 ~

teleport @e[type=horse] ~ -100 ~

execute as @p[scores={Start=1}] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon wither_skeleton 9 59 -216 {Team:"Red",PersistenceRequired:1b,Health:1350f,Tags:["King"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:30s},{id:"minecraft:knockback",lvl:5s}]}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;756769247,1745504945,-1659079847,-1314106020],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}}],Attributes:[{Name:generic.max_health,Base:1350},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:-1}]}

execute as @p[scores={Start=1}] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon wither_skeleton 9 59 -48 {Team:"Blue",PersistenceRequired:1b,Health:1350f,Tags:["King"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:30s},{id:"minecraft:knockback",lvl:5s}]}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1565754452,-316781860,-2091408586,-12865793],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMyYjJkNDdkYWFiOTgyYmJmMGM2ZTExNTFhYWY3ZGNkMGY1MjA5NDAyNmVkMzlhYTVmYjE2ZmI1ODQ1YWU3ZiJ9fX0="}]}}}}],Attributes:[{Name:generic.max_health,Base:1350},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:-1}]}

execute as @p[scores={Start=1}] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon wither_skeleton 156 59 -1017 {Team:"Red",PersistenceRequired:1b,Health:1350f,Tags:["King"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:30s},{id:"minecraft:knockback",lvl:5s}]}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;756769247,1745504945,-1659079847,-1314106020],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI0MzM4MWNiMmE5ZmI0ZTczMDg3NGY2NzljNGE2MjY3NTI5ODI3MDUwNzU0ODg1YmZjOTUyZmU5ZjI4NTkifX19"}]}}}}],Attributes:[{Name:generic.max_health,Base:1350},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:-1}]}

execute as @p[scores={Start=1}] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon wither_skeleton 45 59 -1128 {Team:"Blue",PersistenceRequired:1b,Health:1350f,Tags:["King"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:30s},{id:"minecraft:knockback",lvl:5s}]}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:golden_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s}]}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1565754452,-316781860,-2091408586,-12865793],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMyYjJkNDdkYWFiOTgyYmJmMGM2ZTExNTFhYWY3ZGNkMGY1MjA5NDAyNmVkMzlhYTVmYjE2ZmI1ODQ1YWU3ZiJ9fX0="}]}}}}],Attributes:[{Name:generic.max_health,Base:1350},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:-1}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon minecraft:skeleton 12 57 -209 {PersistenceRequired:1b,Team:"Red",Health:75f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon minecraft:skeleton 6 57 -209 {PersistenceRequired:1b,Team:"Red",Health:75f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon minecraft:skeleton 12 57 -55 {PersistenceRequired:1b,Team:"Blue",Health:75f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run summon minecraft:skeleton 6 57 -55 {PersistenceRequired:1b,Team:"Blue",Health:75f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon minecraft:skeleton 150 57 -1020 {PersistenceRequired:1b,Team:"Red",Health:75f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon minecraft:skeleton 150 57 -1014 {PersistenceRequired:1b,Team:"Red",Health:75f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon minecraft:skeleton 42 57 -1122 {PersistenceRequired:1b,Team:"Blue",Health:75f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run summon minecraft:skeleton 48 57 -1122 {PersistenceRequired:1b,Team:"Blue",Health:75f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:75},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute as @p[scores={Start=1..}] run bossbar set minecraft:redking max 1024

execute as @p[scores={Start=1..}] run bossbar set minecraft:blueking max 1024

kill @e[type=area_effect_cloud]

execute if score #gamemode settings matches 0 run bossbar set minecraft:redking players @a

execute if score #gamemode settings matches 0 run bossbar set minecraft:blueking players @a

execute if score #gamemode settings matches 0 run bossbar set minecraft:redking visible true

execute if score #gamemode settings matches 0 run bossbar set minecraft:blueking visible true

scoreboard players set @a[scores={Start=1..}] secret 0

scoreboard players set @a[scores={Start=1..}] Ultimate 0

scoreboard players set @a[scores={Kit=1}] exCharge 0

scoreboard players set @a[scores={Kit=4}] healstreak 0

scoreboard players set @a[scores={Kit=3}] absShieldCount 0

execute as @a[team=Red] run scoreboard players add #numPlayersOnTeam multiItems 1

execute if score #gamemode settings matches 1 run scoreboard players set #bluekills tdmKills 0

execute if score #gamemode settings matches 1 run scoreboard players set #redkills tdmKills 0

execute if score @s players matches 4 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 15

execute if score @s players matches 6 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 20

execute if score @s players matches 8 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 25

execute if score @s players matches 10 if score #gamemode settings matches 1 run scoreboard players set #tdmreqkills tdmKills 30

execute as @a run function commands:other/player_get_uuid

scoreboard players set #redHS healstreak 0

scoreboard players set #blueHS healstreak 0

scoreboard players set #redHS HSValue 100

scoreboard players set #blueHS HSValue 100

scoreboard objectives setdisplay sidebar Money

scoreboard players reset @a[team=spectator] Money

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 4 52 -103 2 52 -105 minecraft:mossy_cobblestone replace air

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 13 52 -105 15 52 -103 mossy_cobblestone replace air

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 14 52 -162 16 52 -160 minecraft:mossy_cobblestone replace air

execute if score #underground settings matches 1 if score #classicMap settings matches 0 run fill 3 52 -162 5 52 -160 mossy_cobblestone replace air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 4 52 -103 2 52 -105 air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 13 52 -105 15 52 -103 air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 14 52 -162 16 52 -160 air

execute if score #underground settings matches 0 if score #classicMap settings matches 0 run fill 3 52 -162 5 52 -160 air

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 72 54 -998 72 53 -997 packed_ice

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 86 51 -1034 87 49 -1034 packed_ice

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 64 52 -1063 65 52 -1061 snow_block

execute if score #underground settings matches 1 if score #classicMap settings matches 1 run fill 25 54 -1046 26 53 -1046 packed_ice

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 72 54 -998 72 53 -997 air

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 86 51 -1034 87 49 -1034 air

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 64 52 -1063 65 52 -1061 air

execute if score #underground settings matches 0 if score #classicMap settings matches 1 run fill 25 54 -1046 26 53 -1046 air

execute if score #timeofday settings matches 0 run time set 5000

execute if score #timeofday settings matches 1 run time set 18000

tag @a[team=spectator] add spectator

team leave @a[team=spectator]

tag @a remove teamSwitch

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

execute if score #gamemode settings matches 0 run scoreboard players set @e[tag=King] kingActive -2

#Ultimates & Bossbars

execute as @a run scoreboard players operation @s Ultimate = @s ultCheck

bossbar set commands:blue_ult1 players @a[scores={Ultimate=1},team=Blue]

bossbar set commands:blue_ult2 players @a[scores={Ultimate=2},team=Blue]

bossbar set commands:blue_ult3 players @a[scores={Ultimate=3},team=Blue]

bossbar set commands:blue_ult4 players @a[scores={Ultimate=4},team=Blue]

bossbar set commands:blue_ult5 players @a[scores={Ultimate=5},team=Blue]

bossbar set commands:blue_ult6 players @a[scores={Ultimate=6},team=Blue]

bossbar set commands:blue_ult7 players @a[scores={Ultimate=7},team=Blue]

bossbar set commands:blue_ult8 players @a[scores={Ultimate=8},team=Blue]

bossbar set commands:blue_ult9 players @a[scores={Ultimate=9},team=Blue]

bossbar set commands:blue_ult10 players @a[scores={Ultimate=10},team=Blue]

bossbar set commands:blue_ult11 players @a[scores={Ultimate=11},team=Blue]

bossbar set commands:blue_ult12 players @a[scores={Ultimate=12},team=Blue]

bossbar set commands:blue_ult13 players @a[scores={Ultimate=13},team=Blue]

bossbar set commands:blue_ult14 players @a[scores={Ultimate=14},team=Blue]

bossbar set commands:blue_ult15 players @a[scores={Ultimate=15},team=Blue]

bossbar set commands:blue_ult16 players @a[scores={Ultimate=16},team=Blue]

bossbar set commands:blue_ult17 players @a[scores={Ultimate=17},team=Blue]

bossbar set commands:blue_ult18 players @a[scores={Ultimate=18},team=Blue]

bossbar set commands:blue_ult19 players @a[scores={Ultimate=19},team=Blue]

bossbar set commands:blue_ult20 players @a[scores={Ultimate=20},team=Blue]

bossbar set commands:blue_ult21 players @a[scores={Ultimate=21},team=Blue]

bossbar set commands:blue_ult22 players @a[scores={Ultimate=22},team=Blue]

bossbar set commands:blue_ult23 players @a[scores={Ultimate=23},team=Blue]

bossbar set commands:blue_ult24 players @a[scores={Ultimate=24},team=Blue]

bossbar set commands:blue_ult25 players @a[scores={Ultimate=25},team=Blue]

bossbar set commands:blue_ult26 players @a[scores={Ultimate=26},team=Blue]

bossbar set commands:red_ult1 players @a[scores={Ultimate=1},team=Red]

bossbar set commands:red_ult2 players @a[scores={Ultimate=2},team=Red]

bossbar set commands:red_ult3 players @a[scores={Ultimate=3},team=Red]

bossbar set commands:red_ult4 players @a[scores={Ultimate=4},team=Red]

bossbar set commands:red_ult5 players @a[scores={Ultimate=5},team=Red]

bossbar set commands:red_ult6 players @a[scores={Ultimate=6},team=Red]

bossbar set commands:red_ult7 players @a[scores={Ultimate=7},team=Red]

bossbar set commands:red_ult8 players @a[scores={Ultimate=8},team=Red]

bossbar set commands:red_ult9 players @a[scores={Ultimate=9},team=Red]

bossbar set commands:red_ult10 players @a[scores={Ultimate=10},team=Red]

bossbar set commands:red_ult11 players @a[scores={Ultimate=11},team=Red]

bossbar set commands:red_ult12 players @a[scores={Ultimate=12},team=Red]

bossbar set commands:red_ult13 players @a[scores={Ultimate=13},team=Red]

bossbar set commands:red_ult14 players @a[scores={Ultimate=14},team=Red]

bossbar set commands:red_ult15 players @a[scores={Ultimate=15},team=Red]

bossbar set commands:red_ult16 players @a[scores={Ultimate=16},team=Red]

bossbar set commands:red_ult17 players @a[scores={Ultimate=17},team=Red]

bossbar set commands:red_ult18 players @a[scores={Ultimate=18},team=Red]

bossbar set commands:red_ult19 players @a[scores={Ultimate=19},team=Red]

bossbar set commands:red_ult20 players @a[scores={Ultimate=20},team=Red]

bossbar set commands:red_ult21 players @a[scores={Ultimate=21},team=Red]

bossbar set commands:red_ult22 players @a[scores={Ultimate=22},team=Red]

bossbar set commands:red_ult23 players @a[scores={Ultimate=23},team=Red]

bossbar set commands:red_ult24 players @a[scores={Ultimate=24},team=Red]

bossbar set commands:red_ult25 players @a[scores={Ultimate=25},team=Red]

bossbar set commands:red_ult26 players @a[scores={Ultimate=26},team=Red]

#Advancement Grants for ultimates

advancement grant @a[scores={Ultimate=1}] only commands:challenges/ultimate_extraordinaire ultimate1

advancement grant @a[scores={Ultimate=2}] only commands:challenges/ultimate_extraordinaire ultimate2

advancement grant @a[scores={Ultimate=3}] only commands:challenges/ultimate_extraordinaire ultimate3

advancement grant @a[scores={Ultimate=4}] only commands:challenges/ultimate_extraordinaire ultimate4

advancement grant @a[scores={Ultimate=5}] only commands:challenges/ultimate_extraordinaire ultimate5

advancement grant @a[scores={Ultimate=6}] only commands:challenges/ultimate_extraordinaire ultimate6

advancement grant @a[scores={Ultimate=7}] only commands:challenges/ultimate_extraordinaire ultimate7

advancement grant @a[scores={Ultimate=8}] only commands:challenges/ultimate_extraordinaire ultimate8

advancement grant @a[scores={Ultimate=9}] only commands:challenges/ultimate_extraordinaire ultimate9

advancement grant @a[scores={Ultimate=10}] only commands:challenges/ultimate_extraordinaire ultimate10

advancement grant @a[scores={Ultimate=11}] only commands:challenges/ultimate_extraordinaire ultimate11

advancement grant @a[scores={Ultimate=12}] only commands:challenges/ultimate_extraordinaire ultimate12

advancement grant @a[scores={Ultimate=13}] only commands:challenges/ultimate_extraordinaire ultimate13

advancement grant @a[scores={Ultimate=14}] only commands:challenges/ultimate_extraordinaire ultimate14

advancement grant @a[scores={Ultimate=15}] only commands:challenges/ultimate_extraordinaire ultimate15

advancement grant @a[scores={Ultimate=16}] only commands:challenges/ultimate_extraordinaire ultimate16

advancement grant @a[scores={Ultimate=17}] only commands:challenges/ultimate_extraordinaire ultimate17

advancement grant @a[scores={Ultimate=18}] only commands:challenges/ultimate_extraordinaire ultimate18

advancement grant @a[scores={Ultimate=19}] only commands:challenges/ultimate_extraordinaire ultimate19

advancement grant @a[scores={Ultimate=20}] only commands:challenges/ultimate_extraordinaire ultimate20

advancement grant @a[scores={Ultimate=21}] only commands:challenges/ultimate_extraordinaire ultimate21

advancement grant @a[scores={Ultimate=22}] only commands:challenges/ultimate_extraordinaire ultimate22

advancement grant @a[scores={Ultimate=23}] only commands:challenges/ultimate_extraordinaire ultimate23

advancement grant @a[scores={Ultimate=24}] only commands:challenges/ultimate_extraordinaire ultimate24

advancement grant @a[scores={Ultimate=25}] only commands:challenges/ultimate_extraordinaire ultimate25

advancement grant @a[scores={Ultimate=26}] only commands:challenges/ultimate_extraordinaire ultimate26


#End of Start

scoreboard players set @a[predicate=commands:in_any_battlefield,scores={Start=1..}] Start 0

