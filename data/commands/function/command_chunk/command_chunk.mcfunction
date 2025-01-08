# Corrupt Credits

scoreboard players add #corrupt Timer 1

execute if score #corrupt Timer matches 1200.. if score #corruptcredit settings matches 0 run function commands:other/spawn_cc

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tag @e[type=item,x=9,y=53,z=-132,distance=..3,nbt={Item:{count:5,components:{"minecraft:custom_data":{corruptcredit:1b}}}}] add CCDelete

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tag @e[type=item,x=58,y=52,z=-1030,distance=..3,nbt={Item:{count:5,components:{"minecraft:custom_data":{corruptcredit:1b}}}}] add CCDelete

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 run tag @e[type=item,x=19,y=62,z=-1971,distance=..3,nbt={Item:{count:5,components:{"minecraft:custom_data":{corruptcredit:1b}}}}] add CCDelete

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 run tag @e[type=item,x=1051,y=53,z=-76,distance=..3,nbt={Item:{count:5,components:{"minecraft:custom_data":{corruptcredit:1b}}}}] add CCDelete

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 run tag @e[type=item,x=2017,y=52,z=0,distance=..3,nbt={Item:{count:5,components:{"minecraft:custom_data":{corruptcredit:1b}}}}] add CCDelete

execute as @e[type=item,tag=CCDelete] run function commands:other/remove_extra_ccs

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{corruptcredit:1b}}}}] run data merge entity @s {Health:1000}

#Assign Teams to Arrows shot by bows

execute as @e[type=arrow,tag=!getTeam] at @s run function commands:other/arrow_get_team

#Kill Items and prevent players from dropping

function commands:command_chunk/item_clear_filter

#Internal Ability Cooldown

scoreboard players add @a[predicate=commands:in_any_battlefield] abilityCD 1

#Cavalry Charge (Warrior Ultimate)

execute as @a[scores={Ultimate=2},tag=!notAlive,predicate=!commands:inventory/cavalry_charge] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Horse 1

loot give @p[team=Red,scores={Ultimate=2,Horse=3000..}] loot commands:ultimates/cavalry_charge_red

loot give @p[team=Blue,scores={Ultimate=2,Horse=3000..}] loot commands:ultimates/cavalry_charge_blue

execute as @e[tag=cavalry,type=bat] run function commands:ultimates/cavalry_charge

scoreboard players set @a[scores={Horse1=1..}] Horse1 0

scoreboard players set @a[scores={Horse=3000..}] Horse 0

execute as @a[team=Red,tag=cavalryAlive] unless entity @e[tag=RedHorse] run function commands:ultimates/cavalry_dead

execute as @a[team=Blue,tag=cavalryAlive] unless entity @e[tag=BlueHorse] run function commands:ultimates/cavalry_dead

execute as @a[team=Red,scores={Ultimate=2}] at @s if data entity @s RootVehicle.Attach if entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest,nbt={attributes:[{id:"minecraft:movement_speed",base:-1.0}]}] run data merge entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest] {attributes:[{id:"minecraft:movement_speed",base:0.35}]}

execute as @a[team=Blue,scores={Ultimate=2}] at @s if data entity @s RootVehicle.Attach if entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest,nbt={attributes:[{id:"minecraft:movement_speed",base:-1.0}]}] run data merge entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest] {attributes:[{id:"minecraft:movement_speed",base:0.35}]}

execute as @a[team=Red,scores={Ultimate=2}] at @s unless data entity @s RootVehicle.Attach if entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest,nbt={attributes:[{id:"minecraft:movement_speed",base:0.35}]}] run data merge entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest] {attributes:[{id:"minecraft:movement_speed",base:-1.0}]}

execute as @a[team=Blue,scores={Ultimate=2}] at @s unless data entity @s RootVehicle.Attach if entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest,nbt={attributes:[{id:"minecraft:movement_speed",base:0.35}]}] run data merge entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest] {attributes:[{id:"minecraft:movement_speed",base:-1.0}]}

#Minion Swarm

execute as @e[type=bat,tag=minionswarm] run function commands:other/minion_swarm

#Lightning Rod

execute as @a[scores={useFishingRod=1..},predicate=commands:holding/lightning_rod] at @s run tag @n[type=fishing_bobber] add lightningrod

scoreboard players add @e[type=fishing_bobber,tag=lightningrod] LightningRod 1

execute as @e[type=fishing_bobber,tag=lightningrod,scores={LightningRod=20..},predicate=!commands:in_tdm_gates] at @s run summon lightning_bolt

kill @e[type=fishing_bobber,tag=lightningrod,scores={LightningRod=100..}]

#Mimics

execute as @e[type=bat,tag=mimic] at @s run function commands:other/spawn_mimic

scoreboard players add @e[type=piglin,tag=mimic] mimicdeath 1

execute as @e[type=piglin,tag=mimic,scores={mimicdeath=100..}] at @s run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~1 ~ 0 0 0 0 1 force

execute as @e[type=piglin,tag=mimicred,scores={mimicdeath=100..}] at @s if entity @p[team=Blue,distance=..4] run function commands:other/mimic_eat

execute as @e[type=piglin,tag=mimicblue,scores={mimicdeath=100..}] at @s if entity @p[team=Red,distance=..4] run function commands:other/mimic_eat

scoreboard players add @a[tag=mimiceat] Mimic 1

execute if entity @a[scores={Mimic=120..}] run tellraw @a [{"selector":"@a[scores={Mimic=120..}]"},{"text":" was eaten by a Mimic.","color":"white"}]

kill @a[scores={Mimic=120..}]

scoreboard players set @a[scores={Mimic=120..}] Mimic 0

execute as @e[type=marker,tag=mimic] at @s unless entity @e[type=piglin,tag=mimic,distance=..1] run function commands:other/mimic_eat

execute as @e[type=piglin,tag=mimic,scores={mimicdeath=1200..}] at @s run function commands:other/mimic_eat

#Grounding Spell

execute as @e[type=snowball,tag=!groundingspellred,nbt={Item:{components:{"minecraft:custom_data":{groundingspellred:1b}}}}] at @s run function commands:ball/grounding_spell_found_red

execute as @e[type=area_effect_cloud,tag=groundingspellred] unless predicate commands:is_riding_grounding_spell_red at @s run function commands:ball/grounding_spell_landed_red

execute as @e[type=snowball,tag=!groundingspellblue,nbt={Item:{components:{"minecraft:custom_data":{groundingspellblue:1b}}}}] at @s run function commands:ball/grounding_spell_found_blue

execute as @e[type=area_effect_cloud,tag=groundingspellblue] unless predicate commands:is_riding_grounding_spell_blue at @s run function commands:ball/grounding_spell_landed_blue

#Kick other people off of cavalry charge

execute as @a[scores={HorseDie=1..,Kit=2..}] at @s run tp @s ~ ~ ~

scoreboard players set @a[scores={HorseDie=1..}] HorseDie 0

#Chaos Bow (Archer Ultimate)

execute as @a[scores={Kit=5,Ultimate=5},tag=!notAlive,predicate=!commands:inventory/chaos_bow_token] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s ChaosTimer 1

loot give @a[scores={ChaosTimer=4000..}] loot commands:ultimates/chaos_bow_token

scoreboard players reset @a[scores={ChaosTimer=4000..}] ChaosTimer

scoreboard players add @a[predicate=commands:inventory/chaos_bow] chaosBowDur 1

execute as @a[scores={chaosBowDur=400..}] run function commands:ultimates/chaos_bow_end

#Kerfuffle (Wizard Ultimate)

execute as @a[scores={Ultimate=6},tag=!notAlive,predicate=!commands:inventory/kerfuffle] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Kerfuffle 1

loot give @a[scores={Ultimate=6,Kerfuffle=2800..}] loot commands:ultimates/kerfuffle

scoreboard players set @a[scores={Kerfuffle=2800..}] Kerfuffle 0

#Temporary Wall

execute as @e[type=bat,tag=wall] at @s run summon minecraft:marker ~ ~ ~ {Tags:["wall"]}

tp @e[type=bat,tag=wall] ~ -200 ~

execute as @e[type=marker,tag=wall] at @s run fill ~-4 ~ ~ ~4 ~4 ~1 bricks replace air

scoreboard players add @e[type=marker,tag=wall] Wall 1

execute as @e[type=marker,tag=wall,scores={Wall=160..}] at @s run fill ~-4 ~ ~ ~4 ~4 ~1 air replace bricks

kill @e[type=marker,tag=wall,scores={Wall=160..}]

#Perma-Buffs (Buff Passives)

effect give @a[scores={foof=..19}] saturation 1 0 true

execute as @a[team=Red,scores={Kit=1},tag=!upgraded] at @s as @a[team=Blue,distance=..5] run function commands:attributes/adds/add_warrior_passive_slow

execute as @a[team=Red,scores={Kit=3},tag=!upgraded] at @s run effect give @a[team=Red,distance=..5] resistance 2 0 true

execute as @a[team=Blue,scores={Kit=1},tag=!upgraded] at @s as @a[team=Red,distance=..5] run function commands:attributes/adds/add_warrior_passive_slow

execute as @a[team=Blue,scores={Kit=3},tag=!upgraded] at @s run effect give @a[team=Blue,distance=..5] resistance 2 0 true

execute as @a[team=Red,scores={Kit=1},tag=upgraded] at @s as @a[team=Blue,distance=..5] run function commands:attributes/adds/add_warrior_passive_upgrade_slow

execute as @a[team=Red,scores={Kit=3},tag=upgraded] at @s run effect give @a[team=Red,distance=..5] resistance 8 0 true

execute as @a[team=Blue,scores={Kit=1},tag=upgraded] at @s as @a[team=Red,distance=..5] run function commands:attributes/adds/add_warrior_passive_upgrade_slow

execute as @a[team=Blue,scores={Kit=3},tag=upgraded] at @s run effect give @a[team=Blue,distance=..5] resistance 8 0 true

effect clear @a[scores={Kit=12},tag=!upgraded] resistance

execute as @a[scores={Kit=12},tag=!upgraded] run function #commands:clear_strength_attributes

effect give @a[scores={Kit=14}] jump_boost 1 3 true

execute as @a[predicate=commands:is_sneaking,scores={Kit=14},nbt={OnGround:0b}] run function commands:attributes/adds/add_astronaut_passive_gravity

execute as @a[scores={Kit=14},tag=astrogravity,nbt={OnGround:1b}] run function commands:attributes/clears/clear_astronaut_passive_gravity

effect give @a[scores={Kit=15}] fire_resistance 1 0 true

effect give @a[tag=inCastleSpawnRoom] resistance 1 4 true

tag @a[predicate=!commands:in_any_castle_spawn_room] remove inCastleSpawnRoom

#King Bossbar

execute store result bossbar minecraft:redking value run data get entity @e[type=wither_skeleton,team=Red,tag=King,limit=1] Health

execute store result bossbar minecraft:blueking value run data get entity @e[type=wither_skeleton,team=Blue,tag=King,limit=1] Health

#Gravity Canceler

scoreboard players remove @a[scores={gravityTimer=1..},predicate=commands:inventory/gravity_canceler,predicate=commands:in_any_battlefield,tag=!notAlive] gravityTimer 1

scoreboard players add @a[tag=gravCancel] gravityDur 1

execute as @a[tag=gravCancel,team=Red] at @s run effect give @a[team=Blue,distance=..15] levitation 1 1 true

execute as @a[tag=gravCancel,team=Blue] at @s run effect give @a[team=Red,distance=..15] levitation 1 1 true

effect give @a[tag=gravCancel] levitation 1 1 true

tag @a[scores={gravityDur=120..}] remove gravCancel

scoreboard players reset @a[scores={gravityDur=120..}] gravityDur

#Cavalry Slowing

execute as @e[type=horse,tag=BlueHorse] at @s as @a[team=Red,distance=..3] run function commands:attributes/adds/add_cavalry_charge_slow

execute as @e[type=horse,tag=RedHorse] at @s as @a[team=Blue,distance=..3] run function commands:attributes/adds/add_cavalry_charge_slow

#Immortality (Guardian Ultimate)

execute as @a[scores={Ultimate=3},tag=!notAlive,predicate=!commands:inventory/immortality] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s immorTimer 1

loot give @a[scores={immorTimer=3200..,Ultimate=3}] loot commands:ultimates/immortality

scoreboard players reset @a[scores={immorTimer=3200..}] immorTimer

execute as @a[tag=immortality] at @s run function commands:ultimates/immortality_effects

scoreboard players add @a[tag=immortality] immorDur 1

execute as @a[scores={immorDur=140..}] run function commands:ultimates/immortality_end

#Lifeforce

execute as @a[scores={Ultimate=4},tag=!notAlive,predicate=!commands:inventory/lifeforce] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s LifeForce 1

loot give @a[scores={LifeForce=3600..}] loot commands:ultimates/lifeforce

scoreboard players set @a[scores={LifeForce=3600..}] LifeForce 0

#End of the Game (Classic)

scoreboard players add @a[predicate=commands:in_any_battlefield] End 1

execute if entity @a[team=!,scores={End=100..}] unless entity @e[type=wither_skeleton,team=Blue,tag=King] if score #gamemode settings matches 0 run tag @a[team=Red] add win

execute if entity @a[team=!,scores={End=100..}] unless entity @e[type=wither_skeleton,team=Blue,tag=King] if score #gamemode settings matches 0 run tag @a[team=Blue] add lose

execute if entity @a[team=!,scores={End=100..}] unless entity @e[type=wither_skeleton,team=Red,tag=King] if score #gamemode settings matches 0 run tag @a[team=Blue] add win

execute if entity @a[team=!,scores={End=100..}] unless entity @e[type=wither_skeleton,team=Red,tag=King] if score #gamemode settings matches 0 run tag @a[team=Red] add lose

#End of the Game (TDM)

execute if entity @a[team=!,scores={End=100..}] if score #redkills tdmKills >= #tdmreqkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Red] add win

execute if entity @a[team=!,scores={End=100..}] if score #redkills tdmKills >= #tdmreqkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Blue] add lose

execute if entity @a[team=!,scores={End=100..}] if score #bluekills tdmKills >= #tdmreqkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Blue] add win

execute if entity @a[team=!,scores={End=100..}] if score #bluekills tdmKills >= #tdmreqkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Red] add lose

#Other end of game stuff

execute if entity @a[team=Red,tag=win] run title @a title ["",{"text":"Red Team Has Won!","color":"red"}]

execute if entity @a[team=Blue,tag=win] run title @a title ["",{"text":"Blue Team Has Won!","color":"blue"}]

execute if entity @a[tag=win] as @a run function commands:starting/end_score_tag_reset

execute if entity @a[tag=win] run function commands:other/end

#TDM Display kills timer

execute if score #gamemode settings matches 1 unless entity @a[predicate=commands:in_practice_range] run scoreboard players add #TDMTimer tdmTimer 1

execute if score #TDMTimer tdmTimer matches 400.. if score #gamemode settings matches 1 run tellraw @a [{"text":"Red team kill count: ","color":"red"},{"score":{"name":"#redkills","objective":"tdmKills"},"color":"green"},{"text":"/"},{"score":{"name":"#tdmreqkills","objective":"tdmKills"},"color":"green"},{"text":"\n"},{"text":"Blue team kill count: ","color":"blue"},{"score":{"name":"#bluekills","objective":"tdmKills"},"color":"green"},{"text":"/"},{"score":{"name":"#tdmreqkills","objective":"tdmKills"},"color":"green"}]

execute if score #TDMTimer tdmTimer matches 400.. if score #gamemode settings matches 1 run scoreboard players reset #TDMTimer tdmTimer

#Experience Spawner

execute as @e[type=bat,tag=xpspawner] at @s run summon marker ~ ~ ~ {Tags:["xpspawner"]}

tp @e[type=bat,tag=xpspawner] ~ -200 ~

execute as @e[type=marker,tag=xpspawner] at @s run fill ~ ~ ~ ~ ~ ~ spawner{SpawnCount:3,SpawnRange:10,Delay:0,MinSpawnDelay:10,MaxSpawnDelay:40,MaxNearbyEntities:100,RequiredPlayerRange:100,SpawnData:{entity:{id:"minecraft:experience_bottle",Motion:[0.0,1.0,0.0]}}} replace air

execute as @e[type=marker,tag=xpspawner] at @s unless block ~ ~ ~ spawner run fill ~ ~1 ~ ~ ~1 ~ spawner{SpawnCount:3,SpawnRange:10,Delay:0,MinSpawnDelay:10,MaxSpawnDelay:40,MaxNearbyEntities:100,RequiredPlayerRange:100,SpawnData:{entity:{id:"minecraft:experience_bottle",Motion:[0.0,1.0,0.0]}}} replace air

scoreboard players add @e[type=marker,tag=xpspawner] xpspawner 1

execute as @e[type=marker,tag=xpspawner,scores={xpspawner=300..}] at @s run fill ~ ~ ~ ~ ~ ~ air replace spawner

kill @e[type=marker,tag=xpspawner,scores={xpspawner=300..}]

#Convert Gold Ingots to Siege Bucks

tag @e[type=item,predicate=commands:in_gold_pit,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},limit=1] add convertToMoney

execute as @e[type=item,tag=convertToMoney] at @s run function commands:other/convert_to_money

#Convert Corrupt Credits to Bank

tag @e[type=item,predicate=commands:in_gold_pit,nbt={Item:{components:{"minecraft:custom_data":{corruptcredit:1b}}}},tag=!ccspawn,limit=1] add convertToBank

execute as @e[type=item,tag=convertToBank] at @s if entity @p[team=Red,distance=..4] run function commands:other/convert_to_bank_red

execute as @e[type=item,tag=convertToBank] at @s if entity @p[team=Blue,distance=..4] run function commands:other/convert_to_bank_blue

#Starting the map

execute as @p[scores={Start=1}] at @s run function commands:starting/start_map

#Wizard Minions

scoreboard players add @e[type=zombie,tag=Minion] MinionDeath 1

scoreboard players add @a[scores={Kit=6},predicate=commands:in_any_battlefield,tag=!notAlive] WizardMinion 1

execute as @a[team=Red,tag=!upgraded,scores={WizardMinion=400..}] at @s run function commands:entities/wizard_minion_red

execute as @a[team=Blue,tag=!upgraded,scores={WizardMinion=400..}] at @s run function commands:entities/wizard_minion_blue

execute as @a[team=Red,tag=upgraded,scores={WizardMinion=320..}] at @s run function commands:entities/wizard_minion_red

execute as @a[team=Blue,tag=upgraded,scores={WizardMinion=320..}] at @s run function commands:entities/wizard_minion_blue

scoreboard players set @a[tag=upgraded,scores={WizardMinion=320..}] WizardMinion 0

scoreboard players set @a[tag=!upgraded,scores={WizardMinion=400..}] WizardMinion 0

tp @e[type=zombie,scores={MinionDeath=1800..}] ~ -200 ~

#Invincible Money

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}}] run data merge entity @s {Health:1000}

execute as @e[type=item,scores={ItemKill=2}] at @s if block ~ ~-0.1 ~ lava run kill @s

#Your King is being attacked

scoreboard players set @e[type=wither_skeleton,tag=King,nbt={HurtTime:10s}] Defend 1

scoreboard players add #redking kingAttackCD 1

scoreboard players add #blueking kingAttackCD 1

execute as @e[type=wither_skeleton,tag=King,scores={Defend=1..}] run function commands:other/king_attacked

#Glowing effect

execute as @a[scores={Kit=5,glowingEffectCD=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s glowingEffectCD 1

#Archer Cooldown Display

execute as @a[scores={Kit=5}] run function commands:cooldowns/archer_display

#Keep zombies from drowning

execute as @e[type=zombie] run data merge entity @s {InWaterTime:-1}

#Fake Money

tag @e[type=item] add pickupdelay

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fakemoney:1b}}}},tag=!fakeMoney] run data merge entity @s {PickupDelay:15,Health:10}

tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fakemoney:1b}}}},tag=!fakeMoney] add fakeMoney

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fakemoneyred:1b}}}}] at @s run data modify entity @s Owner set from entity @p[team=Blue] UUID

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fakemoneyblue:1b}}}}] at @s run data modify entity @s Owner set from entity @p[team=Red] UUID

scoreboard players add @e[type=item,tag=fakeMoney] Timer 1

kill @e[type=item,tag=fakeMoney,scores={Timer=2400..}]

#Powder Keg

execute as @e[type=bat,tag=powderKeg] at @s run function commands:other/place_powder_keg

execute as @e[type=item_frame,tag=powderKeg] at @s unless entity @e[type=piglin,limit=1,sort=nearest,distance=..0.75,tag=powderKeg] run function commands:other/destroy_powder_keg

execute as @e[type=piglin,tag=powderKeg,nbt=!{Fire:-1s}] at @s run function commands:other/destroy_powder_keg

#Chain Hook

execute as @a[scores={cHookCD=1..},predicate=commands:inventory/chain_hook,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s cHookCD 1

execute as @e[type=item,tag=hookRed] at @s run tag @p[distance=..2,team=Blue] add hooked

execute as @e[type=item,tag=hookBlue] at @s run tag @p[distance=..2,team=Red] add hooked

execute as @e[type=item,tag=hook] at @s run tag @e[type=wither_skeleton,tag=dummy,distance=..1.5,limit=1] add hooked

execute as @a[tag=hooked] run function commands:other/chain_hook

execute as @e[type=wither_skeleton,tag=dummy,tag=hooked,limit=1] run function commands:other/chain_hook

scoreboard players add @e[type=item,tag=hook] chainHook 1

scoreboard players add @a[tag=hooked] chainHook 1

scoreboard players add @e[type=wither_skeleton,tag=dummy,tag=hooked] chainHook 1

execute as @e[type=!item,scores={chainHook=10..}] at @s run function commands:other/chain_hook_pull

kill @e[type=item,tag=hook,scores={chainHook=10..}]

#Treasure Chest (Pirate Ultimate)

execute as @a[scores={Ultimate=7},tag=!notAlive,predicate=!commands:inventory/treasure_chest] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Treasure 1

loot give @a[team=Red,scores={Treasure=3200..}] loot commands:ultimates/treasure_chest_red

loot give @a[team=Blue,scores={Treasure=3200..}] loot commands:ultimates/treasure_chest_blue

scoreboard players set @a[scores={Treasure=3200..}] Treasure 0

execute as @e[type=bat,tag=Treasure] at @s run function commands:ultimates/treasure_chest_init

execute as @e[type=armor_stand,tag=Chest] at @s run particle happy_villager ~ ~ ~ 0 0 0 1 10

scoreboard players add @e[type=armor_stand,tag=Chest] TreasureDelete 1

execute as @e[type=armor_stand,tag=Chest,nbt={OnGround:1b},tag=!placed] at @s run function commands:ultimates/treasure_chest_place

execute as @e[type=armor_stand,scores={TreasureDelete=299}] at @s run summon fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0],ExplosionPower:0}

execute as @e[type=armor_stand,scores={TreasureDelete=300..}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace chest

execute as @e[type=armor_stand,scores={TreasureDelete=300..}] at @s run kill @e[type=item,scores={ItemKill=1},distance=..4]

tp @e[type=armor_stand,scores={TreasureDelete=301..}] ~ -200 ~

#Give arrows to pirate if he got a bow

execute as @a[scores={Kit=7},predicate=commands:inventory/sniper_bow,predicate=!commands:inventory/bottomless_quiver] run loot give @s loot commands:main_weapons/bottomless_quiver

execute as @a[scores={Kit=7},predicate=commands:inventory/punch_bow,predicate=!commands:inventory/bottomless_quiver] run loot give @s loot commands:main_weapons/bottomless_quiver

#Ent Items

scoreboard players remove @a[scores={Kit=8},predicate=commands:in_any_battlefield,tag=!notAlive] hFruitTimer 1

execute as @a[scores={Kit=8,blossomTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s blossomTimer 1

execute as @a[scores={Kit=8,rootingTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s rootingTimer 1

execute at @a[team=Red,scores={hFruitTimer=..0}] run summon minecraft:item ~ ~ ~ {Tags:["spawn"],Item:{id:"minecraft:golden_apple",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Healing Fruit"}',"minecraft:lore":['"Can be thrown to allies from any distance."','"The maximum number fruits on your team is equal to the number of players on your team."','"The fruit takes 1s to consume."'],"minecraft:custom_model_data":{floats:[30]},"minecraft:custom_data":{redhealingfruit:1b,healingfruit:1b},"minecraft:consumable":{consume_seconds:1,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:1,duration:100,show_particles:0b,show_icon:1b},{id:"minecraft:absorption",amplifier:0,duration:2400,show_particles:0b,show_icon:1b}]}]},"minecraft:food":{nutrition:4,saturation:9.6,can_always_eat:true}}}}

execute at @a[team=Blue,scores={hFruitTimer=..0}] run summon minecraft:item ~ ~ ~ {Tags:["spawn"],Item:{id:"minecraft:golden_apple",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Healing Fruit"}',"minecraft:lore":['{"text":"Can be thrown to allies from any distance."}','{"text":"The maximum number fruits on your team is equal to the number of players on your team."}','"The fruit takes 1s to consume."'],"minecraft:custom_model_data":{floats:[30]},"minecraft:custom_data":{bluehealingfruit:1b,healingfruit:1b},"minecraft:consumable":{consume_seconds:1,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:1,duration:100,show_particles:0b,show_icon:1b},{id:"minecraft:absorption",amplifier:0,duration:2400,show_particles:0b,show_icon:1b}]}]},"minecraft:food":{nutrition:4,saturation:9.6,can_always_eat:true}}}}

scoreboard players set @a[scores={hFruitTimer=..0}] hFruitTimer 400

#Ent Cooldown Display

execute as @a[scores={Kit=8}] run function commands:cooldowns/ent_display

#Ent Voice line CD

scoreboard players add #entvoicered voicelineCD 1

scoreboard players add #entvoiceblue voicelineCD 1

#Healing Fruit

scoreboard players add @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{redhealingfruit:1b}}}}] FruitRemove 1

scoreboard players add @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bluehealingfruit:1b}}}}] FruitRemove 1

execute as @e[type=item,tag=spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{redhealingfruit:1b}}}}] at @s run data modify entity @s Owner set from entity @p[team=Red,scores={Kit=8}]

execute as @e[type=item,tag=spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{bluehealingfruit:1b}}}}] at @s run data modify entity @s Owner set from entity @p[team=Blue,scores={Kit=8}]

execute as @e[type=item,scores={FruitRemove=1}] run data merge entity @s {PickupDelay:1}

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{redhealingfruit:1b}}}}] at @s if entity @p[scores={Kit=8},dx=0] as @a[team=Red,distance=..100,predicate=commands:in_any_battlefield] unless score @s Kit matches 8 run tag @s add closest

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{bluehealingfruit:1b}}}}] at @s if entity @p[scores={Kit=8},dx=0] as @a[team=Blue,distance=..100,predicate=commands:in_any_battlefield] unless score @s Kit matches 8 run tag @s add closest

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{redhealingfruit:1b}}}}] at @s if entity @p[scores={Kit=8},dx=0] run tellraw @a[team=Red,scores={Kit=8}] [{"text":"You gave a healing fruit to: ","color":"green"},{"selector":"@p[team=Red,tag=closest,distance=..100]"}]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{bluehealingfruit:1b}}}}] at @s if entity @p[scores={Kit=8},dx=0] run tellraw @a[team=Blue,scores={Kit=8}] [{"text":"You gave a healing fruit to: ","color":"green"},{"selector":"@p[team=Blue,tag=closest,distance=..100]"}]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{redhealingfruit:1b}}}}] at @s run tp @s @p[team=Red,tag=closest]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{components:{"minecraft:custom_data":{bluehealingfruit:1b}}}}] at @s run tp @s @p[team=Blue,tag=closest]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..}] unless data entity @s Thrower run kill @s

tag @a[tag=closest] remove closest

tp @e[type=item,scores={FruitRemove=100..}] ~ -200 ~

#Max of team healing fruits

execute as @a[team=Red] store result score @s hFruitNum run data get entity @s Inventory[{components:{"minecraft:custom_data":{redhealingfruit:1b}}}].count

execute as @a[team=Red] run scoreboard players operation #redHFruit hFruitNum += @s hFruitNum

execute if score #redHFruit hFruitNum > #numPlayersOnTeam multiItems as @a[team=Red,scores={Kit=8}] if score @s matchID = #matchID matchID run clear @s golden_apple[custom_data~{redhealingfruit:1b}] 1

execute as @a[team=Blue] store result score @s hFruitNum run data get entity @s Inventory[{components:{"minecraft:custom_data":{bluehealingfruit:1b}}}].count

execute as @a[team=Blue] run scoreboard players operation #blueHFruit hFruitNum += @s hFruitNum

execute if score #blueHFruit hFruitNum > #numPlayersOnTeam multiItems as @a[team=Blue,scores={Kit=8}] if score @s matchID = #matchID matchID run clear @s golden_apple[custom_data~{bluehealingfruit:1b}] 1

scoreboard players reset #redHFruit hFruitNum

scoreboard players reset #blueHFruit hFruitNum

#Poisonous Mushroom

execute as @e[type=bat,tag=mushroom] at @s run function commands:other/poisonous_mushroom

execute as @e[type=area_effect_cloud,tag=mushroom] store result score @s mushroomRadius run data get entity @s Radius

#Tree of Life (Ent Ultimate)

execute as @a[scores={Ultimate=8},tag=!notAlive,predicate=!commands:inventory/tree_of_life] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Tree 1

loot give @a[team=Red,scores={Tree=3200..}] loot commands:ultimates/tree_of_life_red

loot give @a[team=Blue,scores={Tree=3200..}] loot commands:ultimates/tree_of_life_blue

scoreboard players set @a[scores={Tree=3200..}] Tree 0

execute as @e[type=bat,tag=Tree] at @s run function commands:ultimates/tree_of_life_init

execute as @e[type=armor_stand,tag=TreeoflifeRed] run function commands:ultimates/tree_of_life

execute as @e[type=armor_stand,tag=TreeoflifeBlue] run function commands:ultimates/tree_of_life_blue

scoreboard players add @e[type=armor_stand,tag=Treeoflife] Treeremove 1

execute as @e[type=armor_stand,scores={Treeremove=200..}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace oak_leaves

execute as @e[type=armor_stand,scores={Treeremove=200..}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace oak_log

kill @e[type=armor_stand,scores={Treeremove=200..}]

#Pirate Items

scoreboard players remove @a[scores={Kit=7},predicate=commands:in_any_battlefield,tag=!notAlive] fakeTimer 1

loot give @a[team=Red,scores={fakeTimer=..0}] loot commands:main_abilities/fake_money_red

loot give @a[team=Blue,scores={fakeTimer=..0}] loot commands:main_abilities/fake_money_blue

execute as @a[scores={Kit=7}] at @s run function commands:cooldowns/pirate_display

scoreboard players set @a[scores={fakeTimer=..0},tag=!upgraded] fakeTimer 900

scoreboard players set @a[scores={fakeTimer=..0},tag=upgraded] fakeTimer 600

#Home Warp

scoreboard players add @a[tag=homewarp] castleWarpTimer 1

tellraw @a[scores={damageTaken=1..},tag=homewarp] {"text":"Warp Canceled!","color":"red"}

scoreboard players reset @a[scores={damageTaken=1..},tag=homewarp] castleWarpTimer

tag @a[scores={damageTaken=1..},tag=homewarp] remove homewarp

tellraw @a[scores={castleWarpTimer=1}] {"text":"Warping back to spawnpoint...","color":"green"}

execute as @a[scores={castleWarpTimer=60..},tag=homewarp] run function commands:other/warp_to_castle

#Growth Injection

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{growthinjection:1b}}}}] at @s if entity @e[type=#commands:growth_injection_targetable,distance=..3] run function commands:other/growth_injection

#Cryo Skeleton

execute as @e[type=bat,tag=cryoskeleton] at @s run function commands:other/spawn_cryo_skeleton

#Mysterious Brew

execute as @e[type=item,tag=mysteriousbrew] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=mysteriousbrew,scores={nearbyBlocks=1..}] at @s run function commands:other/mysterious_brew_land

#Angelic Blessing

execute as @a[scores={angelicBlessingTimer=1..},predicate=commands:inventory/angelic_blessing,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s angelicBlessingTimer 1

execute at @a[tag=blessed] run particle dust{color:[0.0,1.0,0.0],scale:1} ~ ~2.5 ~ 0 0 0 1 1

#Fireball Launcher

execute as @a[scores={FireballTimer=1..},predicate=commands:inventory/fireball_launcher,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s FireballTimer 1

#Wizard Lightning Staff

scoreboard players add @a[scores={Kit=6}] LightningTimer 1

scoreboard players remove @a[scores={LightningTimer=961..}] LightningTimer 1

#Give chaos bow users the arrow back

loot give @a[scores={chaosbow=1..}] loot commands:main_weapons/bottomless_quiver

scoreboard players set @a[scores={chaosbow=1..}] chaosbow 0

#Experience Bomb Blaster

execute as @a[scores={expBombTimer=1..},predicate=commands:inventory/exp_blaster,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s expBombTimer 1

execute as @e[tag=stop,type=experience_bottle] store success entity @s Air short 1 if data entity @s {Air:0s}

execute as @e[type=experience_orb] at @s run summon fireball ~ ~ ~ {CustomNameVisible:0b,ExplosionPower:3,Motion:[0.0,-2.0,0.0],CustomName:'{"text":"Experience Bomb","color":"green"}',Item:{id:"minecraft:experience_bottle",count:1},Tags:["fm"]}

kill @e[type=experience_orb]

#Wizard Cooldown Display

execute as @a[scores={Kit=6}] run function commands:cooldowns/wizard_display

#Clear absorption from people with no absorption hearts

execute as @a[nbt={AbsorptionAmount:0.0f}] run effect clear @s absorption

#Withering Potion

execute as @a[scores={Kit=6},predicate=!commands:inventory/withering_potion,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s witherTimer 1

loot give @a[scores={witherTimer=..0}] loot commands:main_abilities/withering_potion

scoreboard players set @a[scores={witherTimer=..0}] witherTimer 900

#Eject Button

execute as @a[scores={Kit=6,ejectTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s ejectTimer 1

execute as @a[scores={Kit=6},predicate=commands:in_any_battlefield,tag=!notAlive] at @s run ride @s mount @n[type=snowball,distance=..1.5,tag=ejectitem]

#Ninja Dash

scoreboard players add #ninjavoicered voicelineCD 1

scoreboard players add #ninjavoiceblue voicelineCD 1

scoreboard players add @a[scores={Kit=2},predicate=commands:in_any_battlefield,tag=!notAlive] dashcharge 1

scoreboard players set @a[scores={dashcharge=361..},tag=!upgraded,tag=!wrenched] dashcharge 361

scoreboard players set @a[scores={dashcharge=301..},tag=upgraded] dashcharge 301

#Smoke Bomb

scoreboard players remove @a[scores={Kit=2},predicate=commands:in_any_battlefield,tag=!notAlive] NinjaItems 1

loot give @a[team=Red,scores={NinjaItems=..0}] loot commands:main_abilities/smoke_bomb_red

loot give @a[team=Blue,scores={NinjaItems=..0}] loot commands:main_abilities/smoke_bomb_blue

scoreboard players set @a[scores={NinjaItems=..0}] NinjaItems 900

execute as @e[type=snowball,tag=!smokebombred,nbt={Item:{components:{"minecraft:custom_data":{smokebombred:1b}}}}] at @s run function commands:ball/smoke_bomb_found_red

execute as @e[type=area_effect_cloud,tag=smokebombcloudred] unless predicate commands:is_riding_smoke_bomb_red at @s run function commands:ball/smoke_bomb_landed_red

execute as @e[type=snowball,tag=!smokebombblue,nbt={Item:{components:{"minecraft:custom_data":{smokebombblue:1b}}}}] at @s run function commands:ball/smoke_bomb_found_blue

execute as @e[type=area_effect_cloud,tag=smokebombcloudblue] unless predicate commands:is_riding_smoke_bomb_blue at @s run function commands:ball/smoke_bomb_landed_blue

execute at @e[type=area_effect_cloud,tag=smokered] run effect give @a[team=Blue,predicate=!commands:armor/enhanced_space_helmet,distance=..5] blindness 2 0 true

execute at @e[type=area_effect_cloud,tag=smokeblue] run effect give @a[team=Red,predicate=!commands:armor/enhanced_space_helmet,distance=..5] blindness 2 0 true

#Shuriken

execute as @a[scores={Kit=2,shurikenTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s shurikenTimer 1

execute as @a[scores={Kit=2,shurikenTimer=..0}] run function commands:other/get_shurikens

execute as @e[type=snowball,tag=!shurikenred,nbt={Item:{components:{"minecraft:custom_data":{shurikenred:1b}}}}] at @s run function commands:ball/shuriken_found_red

execute as @e[type=snowball,tag=!shurikenblue,nbt={Item:{components:{"minecraft:custom_data":{shurikenblue:1b}}}}] at @s run function commands:ball/shuriken_found_blue

execute as @e[type=area_effect_cloud,tag=shurikenred] unless predicate commands:is_riding_shuriken_red at @s run function commands:ball/shuriken_landed_red

execute as @e[type=area_effect_cloud,tag=shurikenblue] unless predicate commands:is_riding_shuriken_blue at @s run function commands:ball/shuriken_landed_blue

#Ninja Strength passive

execute as @a[scores={Ninjakill=1..,Kit=2}] run function commands:attributes/adds/add_ninja_passive_atkdmg

scoreboard players add @a[scores={Ninjakill=1..,Kit=2}] dashcharge 120

#Ninja Cooldown Display

execute if entity @a[scores={Kit=2}] run function commands:cooldowns/ninja_display

#Bouncy Boots

effect give @a[predicate=commands:armor/bouncy_boots] jump_boost 2 1 true

#Sticky Boots

execute as @a[predicate=commands:armor/sticky_boots] at @s store result score @s nearbyBlocks run clone ~-0.5 ~0.01 ~-0.5 ~0.5 ~0.1 ~0.5 ~-0.5 ~ ~-0.5 filtered #commands:can_place_on_without_grass force

execute as @a[scores={nearbyBlocks=1..},predicate=commands:armor/sticky_boots,predicate=commands:is_sneaking] run function commands:attributes/adds/add_sticky_boots_gravity

#Chicken Bombs

execute at @e[type=chicken] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:4b,Fuse:1,ignited:1b,Tags:["chickenbomb"]}

#Shadow Step (Ninja Ultimate)

execute as @a[scores={Kit=2,Ultimate=1},tag=!notAlive,predicate=!commands:inventory/shadow_step] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Ninjault 1

loot give @a[scores={Ninjault=3200..}] loot commands:ultimates/shadow_step

scoreboard players set @a[scores={Ninjault=3200..}] Ninjault 0

scoreboard players add @a[tag=shadow] shadow 1

execute as @a[scores={shadow=10..89}] at @s run function commands:ultimates/shadow_step_effects

execute as @a[scores={shadow=90..}] run function commands:ultimates/shadow_step_end

#Gunblade

scoreboard players add @a[scores={Kit=10}] BurstTimer 1

scoreboard players add @a[scores={Kit=10}] PoisonTimer 1

scoreboard players add @a[scores={Kit=10}] ToxinTimer 1

scoreboard players add @a[scores={Kit=10}] DarknessTimer 1

scoreboard players add @a[scores={Kit=10}] MidasTimer 1

scoreboard players add @a[scores={Kit=10}] ExplosionTimer 1

execute as @e[tag=stop,type=arrow] store success entity @s Air short 1 if data entity @s {Air:0s}

#Gunblade Falloff

scoreboard players add @e[type=arrow,tag=bullet] Timer 1

execute as @e[type=arrow,scores={Timer=8}] run data merge entity @s {damage:2.8d}

execute as @e[type=arrow,scores={Timer=16}] run data merge entity @s {damage:2.3d}

execute as @e[type=arrow,scores={Timer=24}] run data merge entity @s {damage:2.0d}

#Display which bullets are ready

execute if entity @a[scores={Kit=10}] run function commands:other/bullet_display

#Robot items

execute as @a[scores={Kit=10,ironTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s ironTimer 1

execute as @a[scores={Kit=10,shockGrenadeTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s shockGrenadeTimer 1

execute as @a[scores={Kit=10}] run scoreboard players operation @s ironStore = @s ironTimer

execute as @a[scores={Kit=10}] store result score @s ironDis run scoreboard players operation @s ironStore /= #ticks constant

execute as @a[scores={Kit=10}] run scoreboard players operation @s shockGrenadeStore = @s shockGrenadeTimer

execute as @a[scores={Kit=10}] store result score @s shockGrenadeDis run scoreboard players operation @s shockGrenadeStore /= #ticks constant

#Multi-Barrel Attachment

scoreboard players add @a[tag=multiBarrel] multiBarrel 1

execute as @a[scores={multiBarrel=200..}] run function commands:other/multi_barrel_end

#Iron wall

scoreboard players add @a[tag=iron_wall] ironwall 1

execute as @a[scores={ironwall=100..}] run function commands:other/iron_wall_end

#Shock Grenade

execute as @e[type=item,tag=shockGrenade] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=shockGrenadeRed] at @s if entity @a[team=Blue,distance=..3] run function commands:other/shock_grenade_explode

execute as @e[type=item,tag=shockGrenadeBlue] at @s if entity @a[team=Red,distance=..3] run function commands:other/shock_grenade_explode

execute as @e[type=item,tag=shockGrenade,scores={nearbyBlocks=1..}] at @s run function commands:other/shock_grenade_explode

#System Reboot (Robot Ultimate)

execute as @a[scores={Ultimate=10},tag=!notAlive,predicate=!commands:inventory/system_reboot] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s RobotUlt 1

loot give @a[scores={RobotUlt=3600..}] loot commands:ultimates/system_reboot

scoreboard players set @a[scores={RobotUlt=3600..}] RobotUlt 0

execute as @e[type=item,tag=systemReboot] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=systemRebootRed] at @s if entity @a[team=Blue,distance=..4] run function commands:ultimates/system_reboot

execute as @e[type=item,tag=systemRebootBlue] at @s if entity @a[team=Red,distance=..4] run function commands:ultimates/system_reboot

execute as @e[type=item,tag=systemReboot,scores={nearbyBlocks=1..}] at @s run function commands:ultimates/system_reboot

scoreboard players add @a[tag=rebooting] Rebooting 1

execute as @a[tag=rebooting,scores={damageTaken=1..}] run function commands:ultimates/system_reboot_interrupt

execute as @a[scores={Rebooting=100..}] run function commands:ultimates/system_reboot_teleport

#Damage gives ultimate charge

execute as @a[scores={Ultcharge=1..}] run function commands:other/ult_charge

scoreboard players set @a[scores={Ultcharge=1..}] Ultcharge 0

#Ultimate Charge Bossbars

execute as @a[scores={Ultimate=1..32}] run function commands:other/ultimate_bossbars

#Warrior Cooldown Display

execute as @a[scores={Kit=1}] run function commands:cooldowns/warrior_display

#Seismic Slam

execute as @a[scores={Kit=1,WarriorItem=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s WarriorItem 1

effect give @a[tag=slamming,nbt={OnGround:0b}] resistance 1 2 true

execute at @a[team=Red,tag=slamming,nbt={OnGround:1b}] as @a[team=Blue,distance=..5] run function commands:attributes/adds/add_seismic_slam_launch_gravity

execute at @a[team=Blue,tag=slamming,nbt={OnGround:1b}] as @a[team=Red,distance=..5] run function commands:attributes/adds/add_seismic_slam_launch_gravity

execute at @a[tag=slamming,nbt={OnGround:1b}] as @e[type=wither_skeleton,tag=dummy,distance=..5] run function commands:attributes/adds/add_seismic_slam_launch_gravity

execute at @a[tag=slamming,nbt={OnGround:1b}] run playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 0.2

execute at @a[tag=slamming,nbt={OnGround:1b}] run particle dust{color:[0.239,0.239,0.239],scale:1} ~ ~ ~ 1.5 0 1.5 1 100 normal

execute as @a[tag=slamming,nbt={OnGround:1b}] run function commands:attributes/clears/clear_safe_fall_dist

scoreboard players reset @a[tag=slamming,nbt={OnGround:1b}] slamSuspend

tag @a[tag=slamming,nbt={OnGround:1b}] remove slamming

#Invisibility Cloak (Ninja Alt. Ultimate)

execute as @a[scores={Kit=2,Ultimate=11},tag=!notAlive,predicate=!commands:inventory/invisibility_cloak] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s InvisTimer 1

loot give @a[scores={InvisTimer=3000..}] loot commands:ultimates/invis_cloak

scoreboard players set @a[scores={InvisTimer=3000..}] InvisTimer 0

scoreboard players add @a[tag=cloaked] InvisDur 1

execute as @a[scores={InvisDur=200..}] run function commands:ultimates/invis_cloak_end

#Decay Aura (Ent Alt. Ultimate)

execute as @a[scores={Kit=8,Ultimate=18},tag=!notAlive,predicate=!commands:inventory/decay_aura] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s DecayTimer 1

loot give @a[scores={DecayTimer=3200..}] loot commands:ultimates/decay_aura

scoreboard players set @a[scores={DecayTimer=3200..}] DecayTimer 0

scoreboard players add @a[tag=decay] Decay 1

execute as @a[tag=decay] run function commands:ultimates/decay_aura

scoreboard players set @a[scores={died=1..}] Decay 120

tag @a[scores={Decay=120..}] remove decay

scoreboard players set @a[scores={Decay=120..}] Decay 0

#Custom Death messages

execute as @a[scores={Message=1..}] at @s if entity @e[type=armor_stand,tag=Chest,distance=..2] run tag @s add tChestDeath 

advancement revoke @a[advancements={commands:player_kill=true}] only commands:player_kill

scoreboard players set @a[scores={Message=1..}] Message 0

#Ultimate Checker

scoreboard players add #ultChecker Timer 1

execute if score #ultChecker Timer matches 4.. as @a[tag=!spectator] run function commands:other/ult_checker

#Angel Items

execute as @a[scores={Kit=4,HealerItems=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s HealerItems 1

execute as @a[scores={Kit=4,healSpell=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s healSpell 1

scoreboard players add #angelspellsred voicelineCD 1

scoreboard players add #angelspellsblue voicelineCD 1

#Angel Cooldown Display

execute as @a[scores={Kit=4}] run function commands:cooldowns/angel_display

#Clear old arrows

scoreboard players add @e[type=arrow] Timer 1

kill @e[type=arrow,scores={Timer=80..}]

#Passive Money

execute if score #gamemode settings matches 0 run scoreboard players add @a[team=!,predicate=commands:in_any_battlefield] Timer 1

execute if score #gamemode settings matches 1 run scoreboard players add @a[team=!,predicate=commands:in_any_battlefield] Timer 2

execute as @a[team=Red,predicate=commands:in_any_red_castle] run scoreboard players add @s Timer 1

execute as @a[team=Blue,predicate=commands:in_any_blue_castle] run scoreboard players add @s Timer 1

scoreboard players add @a[scores={Timer=80..}] Money 10

scoreboard players add @a[scores={Timer=80..}] totalSiegeBucks 10

scoreboard players set @a[scores={Timer=80..}] Timer 0

#kill multiple cavalry horses

execute as @e[type=horse,tag=RedHorse] run scoreboard players add Horse horsed 1

execute as @e[type=horse,tag=BlueHorse] run scoreboard players add HorseB horsed 1

execute if score Horse horsed matches 2.. run tp @e[type=horse,tag=RedHorse,limit=1] ~ -200 ~

execute if score HorseB horsed matches 2.. run tp @e[type=horse,tag=BlueHorse,limit=1] ~ -200 ~

execute if score Horse horsed matches 2.. run kill @e[type=horse,tag=RedHorse,limit=1]

execute if score HorseB horsed matches 2.. run kill @e[type=horse,tag=BlueHorse,limit=1]

scoreboard players set Horse horsed 0

scoreboard players set HorseB horsed 0

#Particles for players with healing effects

execute as @a[predicate=commands:effects/absorption,predicate=!commands:effects/invisibility] at @s run particle dust{color:[0.933,1.000,0.000],scale:1} ~ ~2.2 ~ 0.933 1.000 0.000 1 0 force

execute as @a[predicate=commands:effects/regeneration,predicate=!commands:effects/invisibility] at @s run particle dust{color:[1.000,0.000,1.000],scale:1} ~ ~2.4 ~ 1.000 0.000 1.000 1 0 force

execute as @a[predicate=commands:effects/health_boost,predicate=!commands:effects/invisibility] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~2.6 ~ 1.000 0.000 0.000 1 0 force

#Guardian Items

execute as @a[scores={Kit=3,defensiveSpell=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s defensiveSpell 1

scoreboard players remove @a[scores={Kit=3},predicate=commands:in_any_battlefield,tag=!notAlive] turretTimer 1

give @a[team=Red,scores={turretTimer=..0}] minecraft:skeleton_spawn_egg[can_place_on={predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},custom_name='{"color":"#B8481F","italic":false,"text":"Turret"}',lore=['{"color":"yellow","italic":false,"text":"Placeable"}','" "'],custom_data={turret:1b},entity_data={id:"minecraft:skeleton",Silent:1b,Team:"Red",Health:25f,Tags:["turret"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":4}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16711680}},{id:"minecraft:dispenser",count:1}],ArmorDropChances:[0.085F,0.085F,-327.670F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:200000}],attributes:[{id:"minecraft:knockback_resistance",base:1.0},{id:"minecraft:movement_speed",base:-1.0}]}] 1

give @a[team=Blue,scores={turretTimer=..0}] minecraft:skeleton_spawn_egg[can_place_on={predicates:[{blocks:"#commands:can_place_on"}],show_in_tooltip:false},custom_name='{"color":"#B8481F","italic":false,"text":"Turret"}',lore=['{"color":"yellow","italic":false,"text":"Placeable"}','" "'],custom_data={turret:1b},entity_data={id:"minecraft:skeleton",Silent:1b,Team:"Blue",Health:25f,Tags:["turret"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":4}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":1638655}},{id:"minecraft:dispenser",count:1}],ArmorDropChances:[0.085F,0.085F,-327.670F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:200000}],attributes:[{id:"minecraft:knockback_resistance",base:1.0},{id:"minecraft:movement_speed",base:-1.0}]}] 1

scoreboard players set @a[scores={turretTimer=..0}] turretTimer 600

#Guardian Cooldown Displays

execute as @a[scores={Kit=3}] run function commands:cooldowns/guardian_display

#Rally (Warrior Alt. Ultimate)

execute as @a[scores={Kit=1,Ultimate=12},tag=!notAlive,predicate=!commands:inventory/rally] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s RallyTimer 1

loot give @a[scores={RallyTimer=3200..}] loot commands:ultimates/rally

scoreboard players set @a[scores={RallyTimer=3200..}] RallyTimer 0

scoreboard players add @a[tag=rally] RallyDelay 1

execute as @a[scores={RallyDelay=1}] run function commands:ultimates/rally_initial

execute as @a[scores={RallyDelay=10}] run function commands:ultimates/rally

scoreboard players set @a[scores={RallyDelay=10..}] RallyDelay 0

#Magic Barrier (Guardian Alt. Ultimate) 

execute as @a[scores={Kit=3,Ultimate=13},tag=!notAlive,predicate=!commands:inventory/magic_barrier] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s BarrierTimer 1

loot give @a[scores={BarrierTimer=3200..}] loot commands:ultimates/magic_barrier

scoreboard players set @a[scores={BarrierTimer=3200..}] BarrierTimer 0

execute as @a[tag=protected] run function commands:ultimates/magic_barrier

#Marked Players

execute as @a[tag=marked] run function commands:ultimates/magic_mark

tag @a[scores={Marked=1..}] remove marked

scoreboard players set @a[scores={Marked=1..}] Marked 0

#Resurrection (Healer Alt. Ultimate)

execute as @a[scores={Kit=4,Ultimate=14},tag=!notAlive,predicate=!commands:inventory/resurrection] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s resurrectionTimer 1

loot give @a[scores={resurrectionTimer=3600..}] loot commands:ultimates/resurrection
 
scoreboard players set @a[scores={resurrectionTimer=3600..}] resurrectionTimer 0

execute as @e[type=marker,tag=resSoul] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.01 3 force @a[scores={Kit=4,Ultimate=14}]

scoreboard players add @a[tag=resurrecting] resurrectionDur 1

execute as @a[tag=resurrecting,team=Red] at @s unless entity @e[type=marker,tag=resSoulRed,distance=..6] run function commands:ultimates/resurrection_interrupt

execute as @a[tag=resurrecting,team=Blue] at @s unless entity @e[type=marker,tag=resSoulBlue,distance=..6] run function commands:ultimates/resurrection_interrupt

execute as @a[scores={resurrectionDur=60..}] at @s run function commands:ultimates/resurrection_succeed

execute as @a[tag=resurrecting,predicate=!commands:holding/resurrection] at @s run function commands:ultimates/resurrection_interrupt

#Bow of Justice (Archer Alt. Ultimate)

execute as @a[scores={Kit=5,Ultimate=15},tag=!notAlive,predicate=!commands:inventory/bow_of_justice] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s JusticeTimer 1
 
loot give @a[scores={JusticeTimer=3000..}] loot commands:ultimates/bow_of_justice

scoreboard players set @a[scores={JusticeTimer=3000..}] JusticeTimer 0

scoreboard players add @a[scores={useBow=1..},predicate=commands:holding/bow_of_justice] ultsUsed 1

clear @a[scores={useBow=1..},predicate=commands:holding/bow_of_justice] bow[custom_data~{bowofjustice:1b}]

execute as @a[advancements={commands:bow_of_justice=true}] run function commands:ultimates/bow_of_justice

scoreboard players add @a[tag=justiceKill] jKillTimer 1

execute as @a[scores={jKillTimer=300..}] run function commands:ultimates/bow_of_justice_remove

#Overcharge (Wizard Alt. Ultimate)

execute as @a[scores={Kit=6,Ultimate=16},tag=!notAlive,predicate=!commands:inventory/overcharge] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s MinionTimer 1
 
loot give @a[scores={MinionTimer=3600..}] loot commands:ultimates/overcharge

scoreboard players set @a[scores={MinionTimer=3600..}] MinionTimer 0

tag @e[type=zombie,tag=overcharge] add OC

execute as @e[type=zombie,tag=overcharge,team=Red] at @s run data merge entity @s {CustomNameVisible:1b,Health:20f,IsBaby:1b,CustomName:'{"text":"Wizard Minion"}',HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1,"minecraft:knockback":2,"minecraft:sharpness":7}}}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}},{}],ArmorDropChances:[0.085F,0.085F,-327.670F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:100000,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:99},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.35}]}

execute as @e[type=zombie,tag=overcharge,team=Blue] at @s run data merge entity @s {CustomNameVisible:1b,Health:20f,IsBaby:1b,CustomName:'{"text":"Wizard Minion"}',HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:fire_aspect":1,"minecraft:knockback":2,"minecraft:sharpness":7}}}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":255}},{}],ArmorDropChances:[0.085F,0.085F,-327.670F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:100000,show_particles:0b}],attributes:[{id:"minecraft:follow_range",base:99},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.35}]}

tag @e[type=zombie,tag=OC] remove overcharge

scoreboard players add @e[type=zombie,tag=OC] OCTimer 1

execute as @e[type=zombie,limit=1,scores={OCTimer=600..}] run function commands:ultimates/overcharge_end

#Flying Dutchman (Pirate Alt. Ultimate)

execute as @a[scores={Kit=7,Ultimate=17},tag=!notAlive,predicate=!commands:inventory/flying_dutchman] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s fDutchmanTimer 1

loot give @a[scores={fDutchmanTimer=3000..}] loot commands:ultimates/flying_dutchman

scoreboard players reset @a[scores={fDutchmanTimer=3000..}] fDutchmanTimer

scoreboard players add @e[type=spruce_boat,tag=flyingdutchman] fDutchmanTimer 1

scoreboard players add @e[type=spruce_boat,tag=flyingdutchman] fDutchmanDur 1

execute as @a[predicate=commands:vehicle/flying_dutchman] run effect give @s resistance 1 2 true

execute as @e[type=spruce_boat,tag=flyingdutchman,scores={fDutchmanTimer=16..}] at @s run summon fireball ~ ~-1 ~ {ExplosionPower:4,Tags:["WF","fm"],Motion:[0.0,-1.0,0.0]}

scoreboard players reset @e[type=spruce_boat,tag=flyingdutchman,scores={fDutchmanTimer=16..}] fDutchmanTimer

execute as @e[type=spruce_boat,scores={fDutchmanDur=220}] at @s run tellraw @a[distance=..2,predicate=commands:vehicle/flying_dutchman] {"text":"Your boat is falling apart!","color":"green"}

execute as @e[type=spruce_boat,scores={fDutchmanDur=280..}] run function commands:ultimates/flying_dutchman_end

#Artificial Intelligence (Robot Alt. Ultimate)

execute as @a[scores={Kit=10,Ultimate=20},tag=!notAlive,predicate=!commands:inventory/artificial_intelligence] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s RobotTimer 1

loot give @a[team=Red,scores={RobotTimer=3600..}] loot commands:ultimates/artificial_intelligence_red

loot give @a[team=Blue,scores={RobotTimer=3600..}] loot commands:ultimates/artificial_intelligence_blue

scoreboard players set @a[scores={RobotTimer=3600..}] RobotTimer 0

execute as @e[tag=AI,type=bat] run function commands:ultimates/artificial_intelligence

scoreboard players add @e[type=zombie,tag=AI] timeLimit 1

tp @e[type=zombie,tag=AI,scores={timeLimit=900..}] ~ -200 ~

execute if entity @e[type=zombie,team=Red,tag=AI,scores={timeLimit=900}] run tellraw @a {"text":"The Artificial Intelligence faded away...","color":"red"}

execute if entity @e[type=zombie,team=Blue,tag=AI,scores={timeLimit=900}] run tellraw @a {"text":"The Artificial Intelligence faded away...","color":"blue"}

#Angelic Staff Beam

execute as @a[scores={Kit=4,RegenTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s RegenTimer 1

#Give Weapons to players that dropped their weapon

execute as @a[scores={Kit=9},predicate=!commands:inventory/poseidon_trident,predicate=commands:in_any_battlefield,tag=!notAlive] run function commands:replace/poseidon_trident_replace

execute as @a[scores={Kit=10},predicate=!commands:inventory/gunblade,predicate=commands:in_any_battlefield,tag=!notAlive] run function commands:other/gunblade_reload_init

scoreboard players add @a[tag=reloading] reload 1

execute as @a[scores={reload=50..}] at @s run function commands:other/gunblade_reload

#Display deaths and Money

execute if score #deathcounter settings matches 0 run scoreboard players add #displayDeaths totalDeaths 1

execute if score #displayDeaths totalDeaths matches 600 run scoreboard objectives setdisplay sidebar totalDeaths

execute if score #displayDeaths totalDeaths matches 700 run scoreboard objectives setdisplay sidebar Money

execute if score #displayDeaths totalDeaths matches 700 run scoreboard players set #displayDeaths totalDeaths 0

#Display class name and health

execute as @a[predicate=commands:in_any_battlefield] run function commands:other/health_display_prep

#Ender Pearl checks for advancement

execute as @a[scores={Kit=2}] if entity @e[type=ender_pearl,tag=!found] run function commands:other/link_projectile

execute as @a[tag=warping] if entity @e[type=ender_pearl,tag=!found2] run function commands:other/find_projectile

execute as @a[tag=warping] unless entity @e[type=ender_pearl,tag=found] run scoreboard players set @s numProjs 0

execute as @a[tag=warping,scores={numProjs=0}] run tag @s add translocate

scoreboard players add @a[tag=translocate] ePearlTimer 1

tag @a[scores={ePearlTimer=40..}] remove translocate

tag @a[scores={ePearlTimer=40..}] remove warping

scoreboard players reset @a[scores={ePearlTimer=40..}] numProjs

scoreboard players reset @a[scores={ePearlTimer=40..}] ePearlTimer

#Advancement Grants

advancement grant @a[scores={Money=5000..},predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:challenges/hoarder

advancement grant @a[scores={Health=40..},predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:challenges/unstoppable_tank

advancement grant @a[scores={craftShovel=1..}] only commands:hidden_advancements/craft_iron_shovel

advancement grant @a[scores={craftPickaxe=1..}] only commands:hidden_advancements/craft_golden_pickaxe

advancement grant @a[scores={craftQuartzBlock=1..}] only commands:hidden_advancements/craft_quartz_block

scoreboard players add @a[tag=slamming,nbt={OnGround:0b}] slamSuspend 1

advancement grant @a[scores={slamSuspend=300..},predicate=!commands:in_practice_range] only commands:hidden_advancements/seismic_suspension

advancement grant @a[scores={useAnvil=1..}] only commands:hidden_advancements/rename_item

advancement grant @a[scores={totalDeaths=25..},predicate=!commands:in_practice_range] only commands:challenges/death_wish

execute if score #red corruptBank matches 25.. run advancement grant @a[team=Red] only commands:challenges/corrupt_hoarder

execute if score #blue corruptBank matches 25.. run advancement grant @a[team=Blue] only commands:challenges/corrupt_hoarder

advancement grant @a[scores={useJukebox=1..}] only commands:hidden_advancements/record_label

advancement grant @a[scores={Ninjakill=1..,ePearlTimer=..40,Kit=2},predicate=!commands:in_practice_range] only commands:character_challenges/translocator

advancement grant @a[scores={ultsEaten=2..,Kit=3},predicate=!commands:in_practice_range] only commands:character_challenges/buffet

execute if score #redHS healstreak matches 20.. run advancement grant @a[scores={Kit=4},team=Red,predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:character_challenges/angelic_presence

execute if score #blueHS healstreak matches 20.. run advancement grant @a[scores={Kit=4},team=Blue,predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:character_challenges/angelic_presence

advancement grant @a[scores={boatDistance=25000..,Kit=7},predicate=!commands:in_practice_range] only commands:character_challenges/pirates_journey

advancement grant @a[scores={Health=20..}] only commands:full_hp

advancement revoke @a[scores={Health=..19}] only commands:full_hp

advancement grant @a[advancements={commands:warrior_challenge_damage=true,commands:warrior_challenge_kill=true},scores={Kit=1},predicate=!commands:in_practice_range] only commands:character_challenges/pure_destruction

advancement grant @a[scores={Kit=9,scourgeKills=3..},predicate=!commands:in_practice_range] only commands:character_challenges/wrath_of_the_gods

advancement grant @a[scores={eBulletHit=2..,Kit=10},predicate=!commands:in_practice_range] only commands:character_challenges/explosive_combo

execute if entity @e[type=area_effect_cloud,tag=redmushroom,scores={mushroomRadius=15..}] run advancement grant @a[scores={Kit=8},team=Red,predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:character_challenges/fungus_amongus

execute if entity @e[type=area_effect_cloud,tag=bluemushroom,scores={mushroomRadius=15..}] run advancement grant @a[scores={Kit=8},team=Blue,predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:character_challenges/fungus_amongus

#Remove extra things

execute as @a[scores={Kit=9}] store result score @s multiItems run clear @s snowball[custom_data~{lightningspell:1b}] 0

execute as @a[scores={Kit=3}] store result score @s multiItems run clear @s skeleton_spawn_egg[custom_data~{turret:1b}] 0

execute as @a[scores={Kit=16}] store result score @s multiItems run clear @s snowball[custom_data~{icepack:1b}] 0

execute as @e[team=Red,tag=turret] run scoreboard players add @a[limit=1,team=Red,scores={Kit=3}] multiItems 1

execute as @e[team=Blue,tag=turret] run scoreboard players add @a[limit=1,team=Blue,scores={Kit=3}] multiItems 1

execute as @e[type=wither_skeleton,team=Red,tag=King] run scoreboard players add #redkings multiItems 1 

execute as @e[type=wither_skeleton,team=Blue,tag=King] run scoreboard players add #bluekings multiItems 1

execute as @a[scores={multiItems=2..,Kit=10}] run function commands:other/remove_multi_items

execute as @a[scores={multiItems=6..,Kit=9},tag=!upgraded] run function commands:other/remove_multi_items

execute as @a[scores={multiItems=9..,Kit=9},tag=upgraded] run function commands:other/remove_multi_items

execute as @a[scores={multiItems=5..,Kit=3}] run function commands:other/remove_multi_items

execute if score #redkings multiItems matches 2.. run function commands:other/remove_multi_items

execute if score #bluekings multiItems matches 2.. run function commands:other/remove_multi_items

execute as @e[type=zombie,tag=hatchlingred] run scoreboard players add #redhatchlings multiItems 1

execute as @e[type=zombie,tag=hatchlingblue] run scoreboard players add #bluehatchlings multiItems 1

execute if score #redhatchlings multiItems matches 11.. run function commands:other/remove_multi_items

execute if score #bluehatchlings multiItems matches 11.. run function commands:other/remove_multi_items

execute as @a[predicate=commands:in_any_battlefield,team=!] run scoreboard players add #playersalive multiItems 1

execute if score #playersalive multiItems matches 1 run advancement grant @p[predicate=commands:in_any_battlefield,predicate=!commands:in_practice_range] only commands:hidden_advancements/last_man_standing

execute as @e[type=zombie,team=Red,tag=OC] run scoreboard players add #RedOCMinions multiItems 1

execute as @e[type=zombie,team=Blue,tag=OC] run scoreboard players add #BlueOCMinions multiItems 1

execute if score #RedOCMinions multiItems matches 25.. run advancement grant @a[scores={Kit=6,Ultimate=16},team=Red] only commands:character_challenges/wizard_army

execute if score #BlueOCMinions multiItems matches 25.. run advancement grant @a[scores={Kit=6,Ultimate=16},team=Blue] only commands:character_challenges/wizard_army

scoreboard players reset #playersalive multiItems

scoreboard players reset #redkings multiItems

scoreboard players reset #bluekings multiItems

scoreboard players reset #redhatchlings multiItems

scoreboard players reset #bluehatchlings multiItems

scoreboard players reset #RedOCMinions multiItems

scoreboard players reset #BlueOCMinions multiItems

#Skybox Check

execute as @a[predicate=commands:skybox,tag=!notAlive] unless entity @a[predicate=commands:in_practice_range] run advancement grant @s only commands:hidden_advancements/hit_skybox

execute as @a[predicate=commands:skybox,tag=!notAlive] unless entity @a[predicate=commands:in_practice_range] at @s run teleport @s ~ 122 ~

execute as @e[type=ender_pearl,predicate=commands:skybox] at @s unless entity @a[predicate=commands:in_practice_range] run teleport @s ~ 122 ~

#Fish Cannon

scoreboard players remove @a[scores={fishCannonTimer=1..},predicate=commands:inventory/fish_cannon] fishCannonTimer 1

execute at @e[type=item,tag=fishCannon] run particle dust{color:[0.000,1.000,0.765],scale:1} ~ ~ ~ 0.25 0.25 0.25 1 5 normal

execute as @e[type=item,tag=fishCannon,nbt={OnGround:1b}] at @s run function commands:other/fish_cannon

execute as @e[type=item,tag=fishCannon] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=fishCannon,scores={nearbyBlocks=1..}] at @s run function commands:other/fish_cannon

execute as @a[team=Red,predicate=commands:inventory/fish_cannon_item_blue] run function commands:other/fish_cannon_item_blue

execute as @a[team=Blue,predicate=commands:inventory/fish_cannon_item_red] run function commands:other/fish_cannon_item_red

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishcannonitemred:1b}}}}] at @s run data modify entity @s Owner set from entity @p[team=Blue] UUID

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishcannonitemblue:1b}}}}] at @s run data modify entity @s Owner set from entity @p[team=Red] UUID

scoreboard players add @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishcannonitemred:1b}}}}] fishCannonTimer 1

scoreboard players add @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishcannonitemblue:1b}}}}] fishCannonTimer 1

kill @e[type=item,scores={fishCannonTimer=180..}]

scoreboard players set @a[scores={died=1..}] fishCannonTimer 0

#Squidzooka

scoreboard players remove @a[scores={squidzookaTimer=1..},predicate=commands:inventory/squidzooka] squidzookaTimer 1

scoreboard players set @a[scores={died=1..}] squidzookaTimer 0

execute as @e[type=item,tag=squidzooka,nbt={OnGround:1b}] at @s run function commands:other/squidzooka_explosion

execute as @e[type=item,tag=squidzooka] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=squidzooka] at @s if score @s nearbyBlocks matches 1.. run function commands:other/squidzooka_explosion

#Poseidon Voice Line CD

scoreboard players add #poseidonvoicered voicelineCD 1

scoreboard players add #poseidonvoiceblue voicelineCD 1

#Poseidon Passive (Lightning Spells)

scoreboard players remove @a[scores={Kit=9,multiItems=..4},predicate=commands:in_any_battlefield,tag=!notAlive,tag=!upgraded] poseidonPassive 1

scoreboard players remove @a[scores={Kit=9,multiItems=..7},predicate=commands:in_any_battlefield,tag=!notAlive,tag=upgraded] poseidonPassive 1

loot give @a[team=Red,scores={poseidonPassive=..0}] loot commands:main_abilities/lightning_spell_red

loot give @a[team=Blue,scores={poseidonPassive=..0}] loot commands:main_abilities/lightning_spell_blue

scoreboard players set @a[tag=!upgraded,scores={poseidonPassive=..0}] poseidonPassive 200

scoreboard players set @a[tag=upgraded,scores={poseidonPassive=..0}] poseidonPassive 180

execute as @e[type=snowball,tag=!lightningspellred,nbt={Item:{components:{"minecraft:custom_data":{lightningspellred:1b}}}}] at @s run function commands:ball/lightning_spell_found_red

execute as @e[type=area_effect_cloud,tag=lightningspellred] unless predicate commands:is_riding_lightning_spell_red at @s run function commands:ball/lightning_spell_landed_red

execute as @e[type=snowball,tag=!lightningspellblue,nbt={Item:{components:{"minecraft:custom_data":{lightningspellblue:1b}}}}] at @s run function commands:ball/lightning_spell_found_blue

execute as @e[type=area_effect_cloud,tag=lightningspellblue] unless predicate commands:is_riding_lightning_spell_blue at @s run function commands:ball/lightning_spell_landed_blue

#Poseidon Cooldown Displays

execute as @a[scores={Kit=9}] run function commands:cooldowns/poseidon_display

#Scourge of the Seas (Poseidon Ultimate)

execute as @a[scores={Ultimate=9},tag=!notAlive,predicate=!commands:inventory/scourge_of_the_seas] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s scourgeTimer 1

loot give @a[scores={scourgeTimer=3200..}] loot commands:ultimates/scourge_of_the_seas

scoreboard players set @a[scores={scourgeTimer=3200..}] scourgeTimer 0

scoreboard players add @a[tag=scourgeActive] scourgeDuration 1

execute as @a[scores={scourgeDuration=300..}] run function commands:ultimates/scourge_end

#Terror of the Seas (Poseidon Alt. Ultimate)

execute as @a[scores={Ultimate=19},tag=!notAlive,predicate=!commands:inventory/terror_of_the_seas] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s terrorTimer 1

loot give @a[team=Red,scores={terrorTimer=3200..}] loot commands:ultimates/terror_of_the_seas_red

loot give @a[team=Blue,scores={terrorTimer=3200..}] loot commands:ultimates/terror_of_the_seas_blue

scoreboard players set @a[scores={terrorTimer=3200..}] terrorTimer 0

execute as @e[type=elder_guardian,tag=terror,tag=!stop] run function commands:ultimates/terror_of_the_seas_init

execute if entity @e[type=elder_guardian,tag=terrorRed] as @a[team=Red] run function #commands:clear_mining_fatigue_attributes

execute if entity @e[type=elder_guardian,tag=terrorBlue] as @a[team=Blue] run function #commands:clear_mining_fatigue_attributes

execute if entity @e[type=elder_guardian,tag=terrorRed] as @a[team=Blue,predicate=commands:effects/terror_of_the_seas] run function commands:ultimates/terror_of_the_seas

execute if entity @e[type=elder_guardian,tag=terrorBlue] as @a[team=Red,predicate=commands:effects/terror_of_the_seas] run function commands:ultimates/terror_of_the_seas

scoreboard players add @e[type=elder_guardian,tag=terror] timeLimit 1

tp @e[type=elder_guardian,tag=terror,scores={timeLimit=900..}] ~ -200 ~

execute if entity @e[type=elder_guardian,team=Red,tag=terror,scores={timeLimit=900}] run tellraw @a {"text":"The Terror of the Seas faded away...","color":"red"}

execute if entity @e[type=elder_guardian,team=Blue,tag=terror,scores={timeLimit=900}] run tellraw @a {"text":"The Terror of the Seas faded away...","color":"blue"}

#Ent Passive

execute as @a[team=Red,scores={Kit=8,entPassive=1..}] at @s run effect give @a[team=Red,distance=..10] regeneration 2 1 true

execute as @a[team=Blue,scores={Kit=8,entPassive=1..}] at @s run effect give @a[team=Blue,distance=..10] regeneration 2 1 true

scoreboard players reset @a[scores={Kit=8,entPassive=1..}] entPassive

#The Watcher

scoreboard players add @e[type=zombie,tag=watcherred] watcherTimer 1

scoreboard players add @e[type=zombie,tag=watcherblue] watcherTimer 1

execute at @e[type=zombie,scores={watcherTimer=1..}] run particle dust{color:[1.000,0.090,1.000],scale:1} ~ ~1 ~ 0 0 0 1 1 normal

execute as @e[type=bat,tag=watcher] run function commands:other/watcher

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=..10] add watchRed

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=..10] add watchBlue

execute if entity @a[tag=watchRed,tag=!watched] run tellraw @a[team=Red] [{"selector":"@a[tag=watchRed,tag=!watched]"},{"text":" has been spotted by a watcher!"}]

execute if entity @a[tag=watchBlue,tag=!watched] run tellraw @a[team=Blue] [{"selector":"@a[tag=watchBlue,tag=!watched]"},{"text":" has been spotted by a watcher!"}]

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=..10] add watched

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=..10] add watched

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=10.1..] remove watchRed

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=10.1..] remove watchBlue

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=10.1..] remove watched

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=10.1..] remove watched

teleport @e[type=zombie,scores={watcherTimer=1200..}] ~ -200 ~

#The attractor

execute as @e[type=bat,tag=attractor] at @s run function commands:other/attractor

scoreboard players add @e[type=zombie,tag=attractorred] attractorTimer 1

scoreboard players add @e[type=zombie,tag=attractorblue] attractorTimer 1

execute at @e[type=zombie,scores={attractorTimer=1..}] run particle dust{color:[1.000,0.090,1.000],scale:1} ~ ~2 ~ 0 0 0 1 1 normal

execute at @e[type=zombie,tag=attractorred] as @a[team=Blue,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[type=zombie,tag=attractorred,limit=1,sort=nearest,distance=..10]

execute at @e[type=zombie,tag=attractorblue] as @a[team=Red,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[type=zombie,tag=attractorblue,limit=1,sort=nearest,distance=..10]

teleport @e[type=zombie,scores={attractorTimer=1200..}] ~ -200 ~

#Spectator boundaries

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[tag=spectator,predicate=!commands:in_forest_glen] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[tag=spectator,predicate=!commands:in_forest_glen] run teleport @s 8 69 -132

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[tag=spectator,predicate=!commands:in_winterland] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[tag=spectator,predicate=!commands:in_winterland] run teleport @s 57 72 -1031

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 as @a[tag=spectator,predicate=!commands:in_colliding_tides] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 as @a[tag=spectator,predicate=!commands:in_colliding_tides] run teleport @s 19 80 -1971

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 as @a[tag=spectator,predicate=!commands:in_colosseum] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 as @a[tag=spectator,predicate=!commands:in_colosseum] run teleport @s 1051 69 -61

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 as @a[tag=spectator,predicate=!commands:in_ncs] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 as @a[tag=spectator,predicate=!commands:in_ncs] run teleport @s 2017 69 0.5

gamemode spectator @a[tag=spectator]

#Frying Pan Fire Aspect Enchantment

execute as @a[scores={damage=1..,Kit=11}] run function commands:other/frying_pan_damage

execute as @a[scores={damagePan=300..,Kit=11},predicate=!commands:inventory/frying_pan_burning] run function commands:other/frying_pan_enchant

execute as @a[scores={damagePan=1..,Kit=11},predicate=commands:inventory/frying_pan_burning] run function commands:other/frying_pan_normal

#Mystery Basket

scoreboard players remove @a[scores={Kit=11,basketTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] basketTimer 1

#Chef Cooldown Display

execute as @a[scores={Kit=11}] run function commands:cooldowns/chef_display

#Sheep Trainee

execute at @e[type=sheep,tag=sheepred] run effect give @a[team=Red,distance=..9] resistance 1 0 true

execute at @e[type=sheep,tag=sheepblue] run effect give @a[team=Blue,distance=..9] resistance 1 0 true

#Pay Raise

scoreboard players remove @a[scores={payRaiseTimer=1..},predicate=commands:in_any_battlefield,predicate=commands:inventory/pay_raise,tag=!notAlive] payRaiseTimer 1

scoreboard players add @a[tag=needsmoney] ray.payRaise 1

execute as @a[scores={ray.payRaise=10..},tag=needsmoney] run function commands:raycasts/pay_raise_money

tag @a[scores={ray.payRaise=10..}] remove needsmoney

scoreboard players reset @a[scores={ray.payRaise=10..}] ray.payRaise

#Scrambled Eggs

scoreboard players remove @a[scores={scrambleTimer=1..},predicate=commands:in_any_battlefield,predicate=commands:inventory/scrambled_eggs,tag=!notAlive] scrambleTimer 1

execute as @e[type=item,tag=eggred] at @s run tag @p[distance=..4,team=Blue] add scrambled

execute as @e[type=item,tag=eggblue] at @s run tag @p[distance=..4,team=Red] add scrambled

execute as @e[type=item,tag=eggred] at @s if entity @p[distance=..4,team=Blue] run kill @s

execute as @e[type=item,tag=eggblue] at @s if entity @p[distance=..4,team=Red] run kill @s

execute as @a[tag=scrambled] at @s run function commands:scramble/randomize

execute at @e[type=item,tag=egg,nbt={OnGround:1b}] run playsound minecraft:block.slime_block.step master @a ~ ~ ~

execute at @e[type=item,tag=egg,nbt={OnGround:1b}] run particle item{item:"egg"} ~ ~ ~ 1 1 1 1 20 normal

kill @e[type=item,tag=egg,nbt={OnGround:1b}]

#Dinner's Ready! (Chef Ultimate)

execute as @a[scores={Ultimate=21},tag=!notAlive,predicate=!commands:inventory/dinners_ready] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s dinnerTimer 1

loot give @a[scores={dinnerTimer=3400..}] loot commands:ultimates/dinners_ready

scoreboard players set @a[scores={dinnerTimer=3400..}] dinnerTimer 0

execute at @a[tag=dinnerTargetRed] run particle angry_villager ~ ~2 ~ 0 0 0 1 1 normal

execute as @a[tag=dinnerTargetRed] run function commands:ultimates/dinner_effects

execute as @a[tag=dinnerTargetBlue] run function commands:ultimates/dinner_effects

scoreboard players add @a[tag=dinnerTargetRed] dinnerEnd 1

scoreboard players add @a[tag=dinnerTargetBlue] dinnerEnd 1

execute as @a[scores={dinnerEnd=300..}] run function commands:ultimates/dinners_end

#Explosive Charge (Warrior Ability)

scoreboard players remove @a[scores={exCharge=1..},predicate=commands:in_any_battlefield,tag=!notAlive] exCharge 1

scoreboard players add @a[tag=exCharge] exChargeDelay 1
 
execute as @a[scores={exChargeDelay=2..}] at @s run teleport @s @s

tag @a[scores={exChargeDelay=2..}] remove exCharge

scoreboard players reset @a[scores={exChargeDelay=2..}] exChargeDelay

#Toxin Ball

execute as @e[type=snowball,tag=!toxinballred,nbt={Item:{components:{"minecraft:custom_data":{toxinballred:1b}}}}] at @s run function commands:ball/toxin_ball_found_red

execute as @e[type=area_effect_cloud,tag=toxinitemred] unless predicate commands:is_riding_toxin_ball_red at @s run function commands:ball/toxin_ball_landed_red

execute as @e[type=snowball,tag=!toxinballblue,nbt={Item:{components:{"minecraft:custom_data":{toxinballblue:1b}}}}] at @s run function commands:ball/toxin_ball_found_blue

execute as @e[type=area_effect_cloud,tag=toxinitemblue] unless predicate commands:is_riding_toxin_ball_blue at @s run function commands:ball/toxin_ball_landed_blue

#Generic Snowball Attack things

execute as @e[type=snowball,tag=snowball] run function commands:ball/visfix

scoreboard players operation #global visfix *= #-1 visfix

#King Activate

scoreboard players remove @e[type=wither_skeleton,scores={kingActive=1..}] kingActive 1

scoreboard players add @e[type=wandering_trader,tag=wanderingKing] kingActive 1

tag @e[type=wither_skeleton,scores={kingActive=0}] add inactivated

execute as @e[type=wither_skeleton,tag=inactivated] run data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0}]}

execute at @e[type=wither_skeleton,team=Red,tag=inactivated] run summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["wanderingKingRed","wanderingKing"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:100000,show_particles:0b}],attributes:[{id:"knockback_resistance",base:1.0},{id:"movement_speed",base:0.8}],wander_target:[I;9,59,-216],Offers:{}}

execute at @e[type=wither_skeleton,team=Blue,tag=inactivated] run summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["wanderingKingBlue","wanderingKing"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:100000,show_particles:0b}],attributes:[{id:"knockback_resistance",base:1.0},{id:"movement_speed",base:0.8}],wander_target:[I;9,59,-48],Offers:{}}

scoreboard players set @e[type=wither_skeleton,tag=inactivated] kingActive -1

tag @e[type=wither_skeleton] remove inactivated

teleport @e[type=wither_skeleton,team=Red,tag=King,scores={kingActive=-1}] @e[type=wandering_trader,tag=wanderingKingRed,limit=1]

teleport @e[type=wither_skeleton,team=Blue,tag=King,scores={kingActive=-1}] @e[type=wandering_trader,tag=wanderingKingBlue,limit=1]

execute positioned 9 59 -216 if entity @e[type=wandering_trader,tag=wanderingKingRed,distance=..2] run scoreboard players set @e[type=wither_skeleton,team=Red,tag=King] kingActive -2 

execute positioned 9 59 -48 if entity @e[type=wandering_trader,tag=wanderingKingBlue,distance=..2] run scoreboard players set @e[type=wither_skeleton,team=Blue,tag=King] kingActive -2

execute positioned 9 59 -216 if entity @e[type=wandering_trader,tag=wanderingKingRed,distance=..2] run teleport @e[type=wither_skeleton,team=Red,tag=King] 9 59 -216

execute positioned 9 59 -48 if entity @e[type=wandering_trader,tag=wanderingKingBlue,distance=..2] run teleport @e[type=wither_skeleton,team=Blue,tag=King] 9 59 -48

execute if score @e[type=wither_skeleton,team=Red,tag=King,limit=1] kingActive matches -2 run teleport @e[type=wandering_trader,tag=wanderingKingRed] ~ -200 ~

execute if score @e[type=wither_skeleton,team=Blue,tag=King,limit=1] kingActive matches -2 run teleport @e[type=wandering_trader,tag=wanderingKingBlue] ~ -200 ~

execute if score @e[type=wither_skeleton,team=Red,tag=King,limit=1] kingActive matches 1.. run teleport @e[type=wandering_trader,tag=wanderingKingRed] ~ -200 ~

execute if score @e[type=wither_skeleton,team=Blue,tag=King,limit=1] kingActive matches 1.. run teleport @e[type=wandering_trader,tag=wanderingKingBlue] ~ -200 ~

execute as @e[type=wandering_trader,tag=wanderingKing] run data remove entity @s HandItems[0]

execute as @e[type=wandering_trader,tag=wanderingKing,scores={kingActive=200..}] run function commands:other/wandering_king_end

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @e[type=wandering_trader,tag=wanderingKingRed] run data merge entity @s {wander_target:[I;9,59,-216]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @e[type=wandering_trader,tag=wanderingKingBlue] run data merge entity @s {wander_target:[I;9,59,-48]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @e[type=wandering_trader,tag=wanderingKingRed] run data merge entity @s {wander_target:[I;156,59,-1017]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @e[type=wandering_trader,tag=wanderingKingBlue] run data merge entity @s {wander_target:[I;45,59,-1128]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 as @e[type=wandering_trader,tag=wanderingKingRed] run data merge entity @s {wander_target:[I;19,55,-1908]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 as @e[type=wandering_trader,tag=wanderingKingBlue] run data merge entity @s {wander_target:[I;19,55,-2034]}

#Dragon Rush

scoreboard players remove @a[scores={dragonRushTimer=1..},predicate=commands:inventory/dragon_rush,predicate=commands:in_any_battlefield,tag=!notAlive] dragonRushTimer 1

scoreboard players reset @a[scores={died=1..}] dragonRushTimer

#Dragon Rage

scoreboard players remove @a[scores={Kit=12,dragonRageTimer=1..},predicate=commands:inventory/dragon_rage,predicate=commands:in_any_battlefield,tag=!notAlive] dragonRageTimer 1

scoreboard players set @a[scores={died=1..}] dragonRageTimer 0

execute as @e[tag=stop,type=dragon_fireball] store success entity @s Air short 1 if data entity @s {Air:0s}

tag @e[type=area_effect_cloud,nbt={Particle:{type:"minecraft:dragon_breath"}},tag=!stop] add dRageCloud

data merge entity @e[type=area_effect_cloud,tag=dRageCloud,tag=!stop,limit=1] {ReapplicationDelay:25,RadiusPerTick:-0.005f,RadiusOnUse:-0.005f,Duration:160}

execute at @e[type=area_effect_cloud,tag=dRageCloud,tag=!stop] run summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,Tags:["dRageCreeper"]}

tag @e[type=area_effect_cloud,tag=dRageCloud] add stop

#Dragon Cooldown Display

execute as @a[scores={Kit=12}] run function commands:cooldowns/dragon_display

#Outrage

scoreboard players add @a[tag=outrage] outrageTimer 1

execute as @a[scores={outrageTimer=161..}] run function commands:other/outrage_effects

#Hatchlings

execute as @e[type=bat,tag=hatchlings] at @s run function commands:other/hatchlings

#Corruption

scoreboard players add @a[tag=corrupted] corruptTimer 1

execute as @a[tag=corrupted,scores={corruptDamage=0..}] run function commands:other/corrupt_side_effects

tag @a[scores={corruptTimer=200..}] remove corrupted

scoreboard players reset @a corruptDamage

scoreboard players reset @a[scores={corruptTimer=200..}] corruptTimer

#Crystal Cannon

scoreboard players remove @a[predicate=commands:inventory/crystal_cannon,scores={cCannonTimer=1..}] cCannonTimer 1

execute as @e[type=item,tag=cCannonItem] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on force

execute as @e[type=item,tag=cCannonItem] if score @s nearbyBlocks matches 1.. at @s run function commands:other/crystal_cannon_prime

scoreboard players reset @e[type=item,tag=cCannonItem] nearbyBlocks

scoreboard players add @e[type=armor_stand,tag=cCannonMarker] cCannonTimer 1

execute as @e[type=armor_stand,tag=cCannonMarker,scores={cCannonTimer=20}] run data merge entity @s {CustomName:'{"text":"2","color":"red","italic":false}'}

execute as @e[type=armor_stand,tag=cCannonMarker,scores={cCannonTimer=40}] run data merge entity @s {CustomName:'{"text":"1","color":"red","italic":false}'}

execute as @e[type=armor_stand,tag=cCannonMarker,scores={cCannonTimer=60..}] at @s run function commands:other/crystal_cannon_explode

#Meteor Shower (Dragon Ultimate)

execute as @a[scores={Ultimate=23},tag=!notAlive,predicate=!commands:inventory/meteor_shower] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s mShowerTimer 1

loot give @a[scores={mShowerTimer=3600..},team=Red] loot commands:ultimates/meteor_shower_red

loot give @a[scores={mShowerTimer=3600..},team=Blue] loot commands:ultimates/meteor_shower_blue

scoreboard players reset @a[scores={mShowerTimer=3600..}] mShowerTimer

execute as @e[tag=meteorshower,type=bat] at @s run function commands:ultimates/meteor_shower_init

scoreboard players add @e[type=area_effect_cloud,tag=mShowerPoint] mShowerTimer 1

scoreboard players add @e[type=area_effect_cloud,tag=mShowerAbove] mShowerTimer 1

execute at @e[type=area_effect_cloud,tag=mShowerPoint,scores={mShowerTimer=20..}] positioned ~ ~20 ~ run scoreboard players add @e[type=area_effect_cloud,tag=mShowerAbove,distance=..4] mShowerTimer 1

execute as @e[type=area_effect_cloud,tag=mShowerAbove,scores={mShowerTimer=10..}] at @s run function commands:ultimates/meteor_shower_drop

execute as @e[type=area_effect_cloud,tag=mShowerPoint,scores={mShowerTimer=200..}] at @s run function commands:ultimates/meteor_shower_end

execute as @e[type=fireball,tag=meteorRed] at @s run data modify entity @s Owner set from entity @p[team=Red] UUID

execute as @e[type=fireball,tag=meteorBlue] at @s run data modify entity @s Owner set from entity @p[team=Blue] UUID

#Evolution (Dragon Alt. Ultimate)

execute as @a[scores={Ultimate=24},tag=!notAlive,predicate=!commands:inventory/evolution] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s evolutionTimer 1

loot give @a[scores={evolutionTimer=3600..}] loot commands:ultimates/evolution

scoreboard players reset @a[scores={evolutionTimer=3600..}] evolutionTimer

scoreboard players add @a[tag=evolve] evolutionDur 1

tellraw @a[scores={evolutionDur=180}] {"text":"Evolution will end in 3 seconds!","color":"green"}

execute as @a[scores={evolutionDur=240..}] run function commands:ultimates/evolution_end

#Punch Bow Cooldown

execute as @a[scores={useBow=1..},predicate=commands:holding/punch_bow] run function commands:replace/punch_bow_replace

scoreboard players add @a[predicate=commands:inventory/punch_bow] pBowTimer 1

execute as @a[scores={pBowTimer=100}] run function commands:replace/punch_bow_ready

#Blunderbuss

scoreboard players remove @a[predicate=commands:inventory/blunderbuss,scores={blunderTimer=1..}] blunderTimer 1

#Angel Healstreak Passive

execute if score #redHS healstreak matches 6.. run tag @a[team=Red,tag=!healstreak,limit=1,scores={Kit=4}] add HSinit

execute if score #blueHS healstreak matches 6.. run tag @a[team=Blue,tag=!healstreak,limit=1,scores={Kit=4}] add HSinit

execute as @a[team=Red,tag=HSinit,tag=!healstreak] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Tags:["angelpassive","HSRed"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":{floats:[119]},"minecraft:custom_data":{angelpassive:1b}}}}

execute as @a[team=Blue,tag=HSinit,tag=!healstreak] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Tags:["angelpassive","HSBlue"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":{floats:[119]},"minecraft:custom_data":{angelpassive:1b}}}}

tag @a[tag=HSinit] add healstreak

execute as @a[team=Red,tag=healstreak] at @s anchored eyes positioned ^ ^ ^ as @e[type=item,tag=HSRed] rotated as @s run teleport @s ^ ^ ^0.5 ~5 0

execute as @a[team=Blue,tag=healstreak] at @s anchored eyes positioned ^ ^ ^ as @e[type=item,tag=HSBlue] rotated as @s run teleport @s ^ ^ ^0.5 ~5 0

scoreboard players add @e[tag=angelpassive] HSTimer 1

execute as @e[type=item,tag=angelpassive,scores={HSTimer=160..}] at @s if entity @p[tag=!upgraded,distance=..2,scores={Kit=4}] run function commands:other/angel_passive

execute as @e[type=item,tag=angelpassive,scores={HSTimer=120..}] at @s if entity @p[tag=upgraded,distance=..2,scores={Kit=4}] run function commands:other/angel_passive

scoreboard players reset @a[tag=!healstreak] HSdamage

execute as @a[scores={HSdamage=200..}] run function commands:other/angel_passive_end

execute as @e[type=item,tag=HSRed] at @s unless entity @p[team=Red,distance=..3,scores={Kit=4}] run kill @s

execute as @e[type=item,tag=HSBlue] at @s unless entity @p[team=Blue,distance=..3,scores={Kit=4}] run kill @s

#Guardian Counter

scoreboard players reset @a[tag=!countering] counterDmg

scoreboard players add @a[tag=countering] counterTimer 1

execute as @a[scores={counterTimer=80..}] run function commands:other/counter_effects

#Get Absorption amount

execute as @a[predicate=commands:effects/absorption] store result score @s absHearts run data get entity @s AbsorptionAmount
 
#Absorption Shield

execute as @a[predicate=commands:inventory/absorption_shield,scores={absShieldCD=40}] run function commands:replace/absorption_shield_ready

scoreboard players add @a[tag=!absShield,scores={Kit=3}] absShieldCD 1

execute as @a[tag=absShield,scores={absShieldCount=1..,absShieldCD=40..}] at @s run function commands:other/absorption_shield_effects

scoreboard players add @a[tag=!absShield,scores={absShieldCount=..79}] absShieldTimer 1

scoreboard players add @a[scores={absShieldTimer=3..}] absShieldCount 1

scoreboard players reset @a[scores={absShieldTimer=3..}] absShieldTimer

scoreboard players reset @a[scores={died=1..}] absShieldCD

tag @a[scores={died=1..}] remove absShield

#Colored beacon in middle

execute store result score #redking bossHP run bossbar get minecraft:redking value

execute store result score #blueking bossHP run bossbar get minecraft:blueking value

execute if score #redking bossHP < #blueking bossHP if score #classicMap settings matches 0 run setblock 9 51 -132 blue_stained_glass

execute if score #redking bossHP > #blueking bossHP if score #classicMap settings matches 0 run setblock 9 51 -132 red_stained_glass

execute if score #redking bossHP = #blueking bossHP if score #classicMap settings matches 0 run setblock 9 51 -132 white_stained_glass

execute if score #redking bossHP < #blueking bossHP if score #classicMap settings matches 1 run setblock 58 51 -1030 blue_stained_glass

execute if score #redking bossHP > #blueking bossHP if score #classicMap settings matches 1 run setblock 58 51 -1030 red_stained_glass

execute if score #redking bossHP = #blueking bossHP if score #classicMap settings matches 1 run setblock 58 51 -1030 white_stained_glass

execute if score #redking bossHP < #blueking bossHP if score #classicMap settings matches 2 run setblock 19 62 -1971 blue_stained_glass

execute if score #redking bossHP > #blueking bossHP if score #classicMap settings matches 2 run setblock 19 62 -1971 red_stained_glass

execute if score #redking bossHP = #blueking bossHP if score #classicMap settings matches 2 run setblock 19 62 -1971 white_stained_glass

#Castle Throne Room Warps (Forest Glen)

execute positioned 19 60 -65 as @a[distance=..1,gamemode=!spectator] run teleport @s 18.4 60 -65

execute positioned 15 60 -65 as @a[distance=..1,gamemode=!spectator] run teleport @s 14.4 60 -65

execute positioned -1 60 -65 as @a[distance=..1,gamemode=!spectator] run teleport @s 0.6 60 -65

execute positioned 3 60 -65 as @a[distance=..1,gamemode=!spectator] run teleport @s 4.6 60 -65

execute positioned 2 57 -65 as @a[distance=..1,gamemode=!spectator] run teleport @s 1.6 60 -65

execute positioned 19 60 -199 as @a[distance=..1,gamemode=!spectator] run teleport @s 18.4 60 -199

execute positioned 15 60 -199 as @a[distance=..1,gamemode=!spectator] run teleport @s 14.4 60 -199

execute positioned -1 60 -199 as @a[distance=..1,gamemode=!spectator] run teleport @s 0.6 60 -199

execute positioned 3 60 -199 as @a[distance=..1,gamemode=!spectator] run teleport @s 4.6 60 -199

execute positioned 16 57 -199 as @a[distance=..1,gamemode=!spectator] run teleport @s 17.4 60 -199

#Castle Throne Room Warps (Winterland)

execute positioned 52 57 -1111 as @a[distance=..1,gamemode=!spectator] run teleport @s 54.4 60 -1111

execute positioned 56 60 -1111 as @a[distance=..1,gamemode=!spectator] run teleport @s 54.4 60 -1111

execute positioned 51 60 -1111 as @a[distance=..1,gamemode=!spectator] run teleport @s 49.4 60 -1111

execute positioned 35 60 -1111 as @a[distance=..1,gamemode=!spectator] run teleport @s 36.6 60 -1111

execute positioned 39 60 -1111 as @a[distance=..1,gamemode=!spectator] run teleport @s 40.6 60 -1111

execute positioned 139 60 -1027 as @a[distance=..1,gamemode=!spectator] run teleport @s 139 60 -1025.4

execute positioned 139 60 -1023 as @a[distance=..1,gamemode=!spectator] run teleport @s 139 60 -1021.4

execute positioned 139 60 -1006 as @a[distance=..1,gamemode=!spectator] run teleport @s 139 60 -1007.6

execute positioned 139 60 -1011 as @a[distance=..1,gamemode=!spectator] run teleport @s 139 60 -1012.6

execute positioned 139 57 -1010 as @a[distance=..1,gamemode=!spectator] run teleport @s 139 60 -1007.6

#Castle Healing Stations

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},predicate=commands:in_red_healing_station] at @s run effect give @p[team=Red,distance=..4] regeneration 10 1 true

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},predicate=commands:in_blue_healing_station] at @s run effect give @p[team=Blue,distance=..4] regeneration 10 1 true

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},predicate=commands:in_red_healing_station] at @s run playsound minecraft:entity.player.levelup master @p[team=Red,distance=..4] ~ ~ ~ 1 2

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},predicate=commands:in_blue_healing_station] at @s run playsound minecraft:entity.player.levelup master @p[team=Blue,distance=..4] ~ ~ ~ 1 2

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},predicate=commands:in_red_healing_station]

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},predicate=commands:in_blue_healing_station]

#Royal Guards

execute unless entity @e[type=skeleton,tag=redroyalguard] if score #gamemode settings matches 0 run scoreboard players add #redroyalguard royalguardCD 1

execute unless entity @e[type=skeleton,tag=blueroyalguard] if score #gamemode settings matches 0 run scoreboard players add #blueroyalguard royalguardCD 1

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #redroyalguard royalguardCD matches 2400 positioned 12 57 -209 run function commands:entities/royal_guard_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #redroyalguard royalguardCD matches 2400 positioned 6 57 -209 run function commands:entities/royal_guard_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #blueroyalguard royalguardCD matches 2400 positioned 12 57 -55 run function commands:entities/royal_guard_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #blueroyalguard royalguardCD matches 2400 positioned 6 57 -55 run function commands:entities/royal_guard_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #redroyalguard royalguardCD matches 2400 positioned 150 57 -1020 run function commands:entities/royal_guard_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #redroyalguard royalguardCD matches 2400 positioned 150 57 -1014 run function commands:entities/royal_guard_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #blueroyalguard royalguardCD matches 2400 positioned 42 57 -1122 run function commands:entities/royal_guard_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #blueroyalguard royalguardCD matches 2400 positioned 48 57 -1122 run function commands:entities/royal_guard_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 if score #redroyalguard royalguardCD matches 2400 positioned 15 53 -1911 run function commands:entities/royal_guard_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 if score #redroyalguard royalguardCD matches 2400 positioned 23 53 -1911 run function commands:entities/royal_guard_red

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 if score #blueroyalguard royalguardCD matches 2400 positioned 23 53 -2031 run function commands:entities/royal_guard_blue

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 if score #blueroyalguard royalguardCD matches 2400 positioned 15 53 -2031 run function commands:entities/royal_guard_blue

execute if score #redroyalguard royalguardCD matches 2400.. run scoreboard players reset #redroyalguard royalguardCD

execute if score #blueroyalguard royalguardCD matches 2400.. run scoreboard players reset #blueroyalguard royalguardCD

execute as @e[type=skeleton,tag=redroyalguard,nbt={attributes:[{id:"minecraft:movement_speed",base:0.0d}]}] if entity @a[team=Blue,predicate=commands:in_any_red_throne_room] run data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0.25d}]}

execute as @e[type=skeleton,tag=redroyalguard,nbt={attributes:[{id:"minecraft:movement_speed",base:0.25d}]}] unless entity @a[team=Blue,predicate=commands:in_any_red_throne_room] run data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0.0d}]}

execute as @e[type=skeleton,tag=blueroyalguard,nbt={attributes:[{id:"minecraft:movement_speed",base:0.0d}]}] if entity @a[team=Red,predicate=commands:in_any_blue_throne_room] run data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0.25d}]}

execute as @e[type=skeleton,tag=blueroyalguard,nbt={attributes:[{id:"minecraft:movement_speed",base:0.25d}]}] unless entity @a[team=Red,predicate=commands:in_any_blue_throne_room] run data merge entity @s {attributes:[{id:"minecraft:movement_speed",base:0.0d}]}

execute as @e[type=skeleton,tag=redroyalguard,predicate=!commands:in_any_red_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 0 run teleport @s ~ ~ ~-0.2

execute as @e[type=skeleton,tag=redroyalguard,predicate=!commands:in_any_red_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 1 run teleport @s ~0.2 ~ ~

execute as @e[type=skeleton,tag=redroyalguard,predicate=!commands:in_any_red_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 2 run teleport @s ~ ~ ~0.2

execute as @e[type=skeleton,tag=blueroyalguard,predicate=!commands:in_any_blue_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 0 run teleport @s ~ ~ ~0.2

execute as @e[type=skeleton,tag=blueroyalguard,predicate=!commands:in_any_blue_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 1 run teleport @s ~ ~ ~-0.2

execute as @e[type=skeleton,tag=blueroyalguard,predicate=!commands:in_any_blue_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 2 run teleport @s ~ ~ ~-0.2

#King Invulnerable when no one is in the throne room

execute as @e[type=wither_skeleton,team=Red,tag=King] unless entity @a[team=Blue,predicate=commands:in_any_red_throne_room] run data merge entity @s {Invulnerable:1b}

execute as @e[type=wither_skeleton,team=Blue,tag=King] unless entity @a[team=Red,predicate=commands:in_any_blue_throne_room] run data merge entity @s {Invulnerable:1b}

execute as @e[type=wither_skeleton,team=Red,tag=King] if entity @a[team=Blue,predicate=commands:in_any_red_throne_room] run data merge entity @s {Invulnerable:0b}

execute as @e[type=wither_skeleton,team=Blue,tag=King] if entity @a[team=Red,predicate=commands:in_any_blue_throne_room] run data merge entity @s {Invulnerable:0b}

#Castle Chain

scoreboard players add @a[tag=castleChain] castleChain 1

execute as @a[scores={castleChain=600..}] run function commands:other/castle_chain_end

#Gold Magnet

execute as @a[predicate=commands:inventory/gold_magnet] at @s run teleport @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{moneyitem:1b}}}},distance=..5] @s

#Killer King

execute at @e[type=wither_skeleton,tag=King,tag=killerking] run particle minecraft:angry_villager ~ ~2 ~ 0 0.25 0 0 1

#Oven

execute as @e[type=bat,tag=oven] at @s run function commands:other/place_oven

scoreboard players add @e[type=zombified_piglin,tag=oven] ovenTimer 1

scoreboard players add @e[type=zombified_piglin,tag=oven] ovenDur 1

execute as @e[type=item_frame,tag=oven] at @s unless entity @e[type=zombified_piglin,limit=1,sort=nearest,distance=..1] run function commands:other/destroy_oven

execute as @e[type=zombified_piglin,tag=oven,scores={ovenTimer=30,ovenDur=1..}] at @s run data modify entity @e[type=item_frame,tag=oven,limit=1,sort=nearest] Item set value {id:"minecraft:stone_bricks",count:1,components:{"minecraft:custom_model_data":{floats:[134]}}}

execute as @e[type=zombified_piglin,tag=oven,tag=pizzatime,scores={ovenTimer=20..}] at @s run function commands:other/shoot_pizza

execute as @e[type=zombified_piglin,tag=oven,scores={ovenTimer=160..}] at @s run function commands:other/shoot_pizza

execute as @e[type=zombified_piglin,tag=oven,scores={ovenDur=1600..}] at @s run function commands:other/destroy_oven

#Pizza Time (Chef Alt. Ultimate)

execute as @a[scores={Ultimate=22},tag=!notAlive,predicate=!commands:inventory/pizza_time] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s pizzaTimer 1

loot give @a[scores={pizzaTimer=3000..}] loot commands:ultimates/pizza_time

scoreboard players reset @a[scores={pizzaTimer=3000..}] pizzaTimer

scoreboard players add @e[type=zombified_piglin,tag=pizzatime,tag=oven] pizzaTimer 1

execute if entity @e[type=zombified_piglin,tag=pizzatime,tag=ovenred,scores={pizzaTimer=200..}] run tellraw @a [{"selector":"@a[limit=1,team=Red,scores={Ultimate=22}]"},{"text":"'s ovens slowed down!"}]

execute if entity @e[type=zombified_piglin,tag=pizzatime,tag=ovenblue,scores={pizzaTimer=200..}] run tellraw @a [{"selector":"@a[limit=1,team=Blue,scores={Ultimate=22}]"},{"text":"'s ovens slowed down!"}]

execute as @e[type=zombified_piglin,tag=pizzatime,tag=oven,scores={pizzaTimer=200..}] run function commands:ultimates/pizza_time_end

#Respawning

execute as @a[predicate=commands:in_any_respawn_room,tag=notAlive,team=Red] at @s run function commands:starting/respawn_timer_red

execute as @a[predicate=commands:in_any_respawn_room,tag=notAlive,team=Blue] at @s run function commands:starting/respawn_timer_blue

#Spawntime 5s in TDM

execute if score #gamemode settings matches 1 run scoreboard players set @a[scores={died=1..}] Respawn 90

execute if score #gamemode settings matches 1 run scoreboard players set @a[team=Red,scores={died=1..}] RedKit 90

execute if score #gamemode settings matches 1 run scoreboard players set @a[team=Blue,scores={died=1..}] BlueKit 90

#TDM spreadplayer

execute as @a[predicate=commands:on_tdm_gates,tag=!notAlive] at @s run function commands:starting/tdm_spawn

#TDM Spawn after delay

execute if score #gamemode settings matches 1 run scoreboard players add @a[predicate=commands:in_tdm_gates] tdmSpawnTime 1

execute as @a[scores={tdmSpawnTime=400..}] at @s run function commands:starting/tdm_spawn

execute if score #gamemode settings matches 1 run scoreboard players reset @a[predicate=!commands:in_tdm_gates] tdmSpawnTime

#Russian Roulette

scoreboard players remove @a[scores={rouletteTimer=1..},predicate=commands:inventory/russian_roulette] rouletteTimer 1

#Betting Chips

execute as @a[tag=!chipbet,scores={chipBet=1..5}] run function commands:other/betting_chips

scoreboard players add @a[scores={chipBet=1..5}] betChipTimer 1

scoreboard players add @a[tag=hasBounty] betChipTimer 1

execute as @a[scores={betChipTimer=400..}] run function commands:other/betting_chip_end

#Security Guard

scoreboard players add @e[type=zombified_piglin,tag=security] securityTimer 1

execute as @e[type=zombified_piglin,tag=security,scores={securityTimer=20..}] run function commands:other/security_guard_target

#Coin Gun

scoreboard players remove @a[scores={coinGunTimer=1..},predicate=commands:inventory/coin_gun] coinGunTimer 1

execute as @e[type=item,tag=coinBulletRed] at @s run tag @e[type=#commands:projectile_hits,team=Blue,distance=..2,limit=1,sort=nearest] add coinHit

execute as @e[type=item,tag=coinBulletBlue] at @s run tag @e[type=#commands:projectile_hits,team=Red,distance=..2,limit=1,sort=nearest] add coinHit

execute as @e[type=#commands:projectile_hits,tag=coinHit] at @s run function commands:other/coin_gun_hit

kill @e[type=item,tag=coinBullet,nbt={OnGround:1b}]

#Busted (Gambler Ultimate)

execute as @a[scores={Ultimate=25},tag=!notAlive,predicate=!commands:inventory/busted] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s bustedTimer 1

loot give @a[scores={bustedTimer=3200..}] loot commands:ultimates/busted

scoreboard players reset @a[scores={bustedTimer=3200..}] bustedTimer

#Sleight of Hand (Gambler Alt Ultimate)

execute as @a[scores={Ultimate=26},tag=!notAlive,predicate=!commands:inventory/sleight_of_hand] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s sleightTimer 1

loot give @a[scores={sleightTimer=3200..}] loot commands:ultimates/sleight_of_hand

scoreboard players reset @a[scores={sleightTimer=3200..}] sleightTimer

scoreboard players add @a[tag=sleightofhand] sleightDur 1

tag @a[scores={sleightDur=300..}] remove sleightofhand

scoreboard players reset @a[scores={sleightDur=300..}] sleightDur

#Playing Cards

scoreboard players remove @a[scores={Kit=13,pCardsTimer=1..},predicate=commands:inventory/playing_cards,predicate=commands:in_any_battlefield,tag=!notAlive] pCardsTimer 1

execute as @e[type=item,tag=pCardRed] at @s run tag @e[type=#commands:projectile_hits,team=Blue,distance=..2] add cardEffect

execute as @e[type=item,tag=pCardBlue] at @s run tag @e[type=#commands:projectile_hits,team=Red,distance=..2] add cardEffect

execute as @e[type=#commands:projectile_hits,tag=cardEffect] at @s run function commands:other/playing_card_damage

scoreboard players add @e[type=item,tag=pCard] pCardsTimer 1

kill @e[type=item,scores={pCardsTimer=12..}]

#Gambler Cooldown Displays

execute as @a[scores={Kit=13}] run function commands:cooldowns/gambler_display

#King health lowers after Game Duration

execute if entity @a[scores={End=100..}] run scoreboard players add #gameDuration gameDuration 1

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players add #loseKingHP gameDuration 1

execute if score #gameDuration gameDuration matches 18000 if score #gamemode settings matches 0 run title @a title {"text":"Your kings have been weakened!","color":"dark_red"}

execute if score #gameDuration gameDuration matches 18000 if score #gamemode settings matches 0 run title @a subtitle {"text":"The game has been going on for 15 minutes!","color":"green"}

execute if score #loseKingHP gameDuration matches 20.. as @e[type=wither_skeleton,tag=King] run function commands:other/lower_king_hp

#TDM Game End after 10 Minutes

execute if score #gameDuration gameDuration matches 10800 if score #gamemode settings matches 1 run title @a title {"text":"1 Minute Remaining!","color":"dark_red"}

execute if entity @a[team=Blue,scores={End=100..}] if score #gameDuration gameDuration matches 12000.. if score #bluekills tdmKills > #redkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Blue] add End

execute if entity @a[team=Red,scores={End=100..}] if score #gameDuration gameDuration matches 12000.. if score #redkills tdmKills > #bluekills tdmKills if score #gamemode settings matches 1 run tag @a[team=Red] add End

execute if entity @a[scores={End=100..}] if score #gameDuration gameDuration matches 12000 if score #bluekills tdmKills = #redkills tdmKills if score #gamemode settings matches 1 run title @a title {"text":"Sudden Death!","color":"dark_red"}

execute if entity @a[scores={End=100..}] if score #gameDuration gameDuration matches 12000 if score #bluekills tdmKills = #redkills tdmKills if score #gamemode settings matches 1 run title @a subtitle {"text":"The next kill decides the winner!","color":"green"}

#Teleport to Dungeons

scoreboard players add @a[tag=dungeonTP] dungeonDelay 1

execute as @a[scores={dungeonDelay=60..}] run function commands:other/dungeon_tp

execute as @a[tag=dungeonTP,scores={damageTaken=1..}] run function commands:other/dungeon_cancel

#Slime block jump boost and Speed Pads

execute as @a[predicate=commands:on_launch_pads] at @s if block ~ ~-0.5 ~ slime_block run effect give @s jump_boost 1 13 true

execute as @a[predicate=commands:on_colliding_tides_bounce_pad] at @s run effect give @s jump_boost 1 10 true

tag @a[predicate=commands:on_colliding_tides_bounce_pad] add onPirateBouncePad

scoreboard players set @a[predicate=commands:on_colliding_tides_bounce_pad] RSAttr.SafeFallDist 2147483647

execute as @a[predicate=commands:on_colliding_tides_bounce_pad] at @s run function commands:attributes/adds/add_safe_fall_dist

execute as @a[predicate=commands:on_ncs_speed_pad] at @s if block ~ ~-0.5 ~ magenta_glazed_terracotta run effect give @s speed 1 40 true

effect clear @a[predicate=commands:on_ncs_roof,predicate=commands:effects/speed_pad] speed

execute as @a[tag=onPirateBouncePad,predicate=!commands:on_colliding_tides_bounce_pad,nbt={OnGround:1b}] run function commands:attributes/clears/clear_safe_fall_dist

tag @a[tag=onPirateBouncePad,predicate=!commands:on_colliding_tides_bounce_pad,nbt={OnGround:1b}] remove onPirateBouncePad

#Winterland Boats

scoreboard players add @e[type=oak_boat,tag=winterBoat] Timer 1

kill @e[type=oak_boat,tag=winterBoat,scores={Timer=400..}]

#Asteroid

scoreboard players remove @a[scores={Kit=14,asteroidTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] asteroidTimer 1

execute as @e[type=area_effect_cloud,tag=asteroidLand] unless predicate commands:is_riding_asteroid at @s run function commands:other/asteroid_land

execute as @e[type=item,tag=asteroidshard,nbt={OnGround:1b}] at @s run function commands:other/asteroid_shard

#Enhanced Space Helmet

effect clear @a[predicate=commands:armor/enhanced_space_helmet] blindness

effect clear @a[predicate=commands:armor/enhanced_space_helmet] wither

effect clear @a[predicate=commands:armor/enhanced_space_helmet] poison

#Safety Tether

execute as @e[type=area_effect_cloud,tag=redTether] at @s unless entity @a[team=Red,distance=..30,tag=tethered] run function commands:other/destroy_tether

execute as @e[type=area_effect_cloud,tag=blueTether] at @s unless entity @a[team=Blue,distance=..30,tag=tethered] run function commands:other/destroy_tether

execute as @e[type=area_effect_cloud,tag=tetherSpot,scores={tetherTimer=200..}] at @s run function commands:other/destroy_tether

scoreboard players add @e[type=area_effect_cloud,tag=tetherSpot] tetherTimer 1

#Debris Cannon

scoreboard players remove @a[scores={debrisTimer=1..},predicate=commands:inventory/debris_cannon,predicate=commands:in_any_battlefield,tag=!notAlive] debrisTimer 1

kill @e[type=item,tag=debrisitem,nbt={OnGround:1b}]

execute as @e[type=#commands:projectile_hits,team=Red,predicate=commands:inventory/debris_item_blue] run function commands:other/debris_item

execute as @e[type=#commands:projectile_hits,team=Blue,predicate=commands:inventory/debris_item_red] run function commands:other/debris_item

execute as @e[type=item,tag=redDebris] at @s run data modify entity @s Owner set from entity @p[team=Blue] UUID

execute as @e[type=item,tag=blueDebris] at @s run data modify entity @s Owner set from entity @p[team=Red] UUID

#Astronaut Upgrade Passive

scoreboard players remove @a[scores={Kit=14,astroPassTimer=1..},tag=upgraded] astroPassTimer 1

execute as @a[scores={Kit=14,astroPassTimer=..0,jump=1..},tag=upgraded,predicate=commands:is_sneaking,nbt={OnGround:1b}] at @s run function commands:other/astronaut_upgrade_passive

#Space Wrench Ability

scoreboard players remove @a[scores={Kit=14,wrenchTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] wrenchTimer 1

#Astronaut Cooldown Display

execute as @a[scores={Kit=14}] run function commands:cooldowns/astronaut_display

#Rocket Launch (Astronaut Ultimate)

execute as @a[scores={Ultimate=27},tag=!notAlive,predicate=!commands:inventory/rocket_launch] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s rocLaunchTimer 1

loot give @a[scores={rocLaunchTimer=3000..}] loot commands:ultimates/rocket_launch

scoreboard players reset @a[scores={rocLaunchTimer=3000..}] rocLaunchTimer

scoreboard players add @e[type=area_effect_cloud,tag=rocketPad] rocLaunchTimer 1

execute as @e[type=area_effect_cloud,tag=rocketPad,scores={rocLaunchTimer=100..}] at @s run function commands:ultimates/rocket_launch

execute as @e[type=item,tag=rocketItem,nbt={OnGround:1b}] at @s run function commands:ultimates/rocket_explode

#Smart Drone (Astronaut Alt. Ultimate)

execute as @a[scores={Ultimate=28},tag=!notAlive,predicate=!commands:inventory/smart_drone] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s droneTimer 1

loot give @a[scores={droneTimer=2900..}] loot commands:ultimates/smart_drone

scoreboard players reset @a[scores={droneTimer=2900..}] droneTimer

execute as @e[type=item,tag=smartDrone] run data modify entity @s PickupDelay set value 32767

scoreboard players add @e[type=item,tag=smartDrone] droneCD 1

execute as @e[type=item,scores={droneCD=80..}] at @s run function commands:ultimates/smart_drone_shoot

execute as @e[type=item,tag=smartDroneLaserRed] at @s if entity @a[team=Blue,distance=..2] run function commands:ultimates/smart_drone_laser_hit

execute as @e[type=item,tag=smartDroneLaserBlue] at @s if entity @a[team=Red,distance=..2] run function commands:ultimates/smart_drone_laser_hit

execute as @e[type=item,tag=smartDroneLaser] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=smartDroneLaser] at @s if score @s nearbyBlocks matches 1.. run function commands:ultimates/smart_drone_laser_hit

execute as @a[tag=hasSmartDrone] at @s positioned ~ ~2 ~ as @e[type=armor_stand,tag=smartDrone] run tp @s ~ ~ ~

execute as @a[scores={Ultimate=28,droneDamage=150..},tag=hasSmartDrone] at @s run function commands:ultimates/smart_drone_destroy

execute as @a[scores={died=1..},tag=hasSmartDrone] at @s run function commands:ultimates/smart_drone_destroy_all

#Sparkler

scoreboard players remove @a[scores={Kit=15,sparklerTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] sparklerTimer 1

execute as @a[scores={Kit=15,sparklerTimer=1}] run function commands:replace/sparkler_ready

scoreboard players add @e[type=item,tag=sparkleritem] sparklerTimer 1

kill @e[type=item,tag=sparkleritem,scores={sparklerTimer=4..}]

execute as @e[type=item,tag=sparklerred] at @s as @a[team=Blue,distance=..3] at @s run function commands:other/sparkler_hit

execute as @e[type=item,tag=sparklerblue] at @s as @a[team=Red,distance=..3] at @s run function commands:other/sparkler_hit

tag @a[tag=sparkled] remove sparkled

#Small Fireball Delete

scoreboard players add @e[type=small_fireball,tag=smf] Timer 1

kill @e[type=small_fireball,scores={Timer=2..}]

#Blazing Speed

scoreboard players remove @a[scores={Kit=15,blazingSpeedTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] blazingSpeedTimer 1

execute as @a[scores={RSAttr.BlazingSpeed=0..}] at @s run function commands:other/blazing_speed_effects

execute as @e[type=item,tag=blazingspeedbomb] run scoreboard players add @s blazingSpeedTimer 1

execute as @e[type=item,tag=blazingspeedbomb,scores={blazingSpeedTimer=20..}] at @s run function commands:other/blazing_speed_bomb_explode

#Bang Snaps

execute as @e[type=snowball,tag=!bangsnapred,nbt={Item:{components:{"minecraft:custom_data":{bangsnapred:1b}}}}] at @s run function commands:ball/bang_snap_found_red

execute as @e[type=snowball,tag=!bangsnapblue,nbt={Item:{components:{"minecraft:custom_data":{bangsnapblue:1b}}}}] at @s run function commands:ball/bang_snap_found_blue

execute as @e[type=area_effect_cloud,tag=bangsnapred] unless predicate commands:is_riding_bang_snap_red at @s run function commands:ball/bang_snap_landed_red

execute as @e[type=area_effect_cloud,tag=bangsnapblue] unless predicate commands:is_riding_bang_snap_blue at @s run function commands:ball/bang_snap_landed_blue

#Bucket of Homemade Napalm

scoreboard players remove @a[scores={napalmBucketTimer=1..},predicate=commands:inventory/napalm_bucket,tag=!notAlive] napalmBucketTimer 1

#Bunker Boots

execute as @a[team=Red,predicate=commands:armor/bunker_boots] at @s if entity @a[team=Blue,distance=..5,predicate=commands:effects/on_fire] run function commands:attributes/adds/add_bunker_boots_speed

execute as @a[team=Blue,predicate=commands:armor/bunker_boots] at @s if entity @a[team=Red,distance=..5,predicate=commands:effects/on_fire] run function commands:attributes/adds/add_bunker_boots_speed

#Pyromania

scoreboard players remove @a[scores={pyromaniaTimer=1..},predicate=commands:inventory/pyromania,tag=!notAlive] pyromaniaTimer 1

#Cinder Bombs

execute as @e[type=snowball,tag=!cinderbombred,nbt={Item:{components:{"minecraft:custom_data":{cinderbombred:1b}}}}] at @s run function commands:ball/cinder_bomb_found_red

execute as @e[type=snowball,tag=!cinderbombblue,nbt={Item:{components:{"minecraft:custom_data":{cinderbombblue:1b}}}}] at @s run function commands:ball/cinder_bomb_found_blue

execute as @e[type=area_effect_cloud,tag=cinderbombred] unless predicate commands:is_riding_cinder_bomb_red at @s run function commands:ball/cinder_bomb_landed_red

execute as @e[type=area_effect_cloud,tag=cinderbombblue] unless predicate commands:is_riding_cinder_bomb_blue at @s run function commands:ball/cinder_bomb_landed_blue

execute as @e[type=area_effect_cloud,tag=cindersmokered] at @s run effect give @a[distance=..5,team=Blue] blindness 2 0

execute as @e[type=area_effect_cloud,tag=cindersmokeblue] at @s run effect give @a[distance=..5,team=Red] blindness 2 0

execute as @e[type=area_effect_cloud,tag=cindersmoke] at @s run particle flame ~ ~ ~ 1 0.1 1 0.05 4

scoreboard players remove @e[type=area_effect_cloud,tag=cindersmoke] cinderBombDuration 1

execute as @e[type=area_effect_cloud,tag=cindersmoke,scores={cinderBombDuration=..0}] at @s run function commands:other/cinder_bomb_effects

#Chrysanthemum Shell

execute as @a[scores={Ultimate=29},tag=!notAlive,predicate=!commands:inventory/chrysanthemum_shell] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s chrysanthemumShellTimer 1

loot give @a[scores={chrysanthemumShellTimer=1600..}] loot commands:ultimates/chrysanthemum_shell

scoreboard players reset @a[scores={chrysanthemumShellTimer=1600..}] chrysanthemumShellTimer

scoreboard players add @e[type=item,tag=chrysanthemum_projectile] chrysanthemumShellTimer 1

execute as @e[type=item,tag=chrysanthemum_projectile] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on force

execute as @e[type=item,tag=chrysanthemum_projectile,scores={nearbyBlocks=1..}] at @s run function commands:ultimates/chrysanthemum_explosion

execute as @e[type=item,tag=chrysanthemum_projectile,scores={chrysanthemumShellTimer=30..}] at @s run function commands:ultimates/chrysanthemum_explosion

execute as @a[tag=cshelldown,nbt={OnGround:1b}] run function commands:ultimates/chrysanthemum_expire

#Pop Rocks

execute as @a[scores={Ultimate=30},tag=!notAlive,predicate=!commands:inventory/pop_rocks] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s popRocksTimer 1

loot give @a[scores={popRocksTimer=2000..}] loot commands:ultimates/pop_rocks

scoreboard players reset @a[scores={popRocksTimer=2000..}] popRocksTimer

scoreboard players add @a[tag=poprocks] popRocksDur 1

execute as @a[scores={popRocksDur=200..}] run function commands:ultimates/pop_rocks_end

#Firecracker Cooldown Display

execute as @a[scores={Kit=15}] run function commands:cooldowns/firecracker_display

#Firecracker Character Challenge

execute as @a[team=Red,predicate=commands:effects/on_fire] run scoreboard players add #numPlayersOnFireRed firCharChallenge 1

execute as @a[team=Blue,predicate=commands:effects/on_fire] run scoreboard players add #numPlayersOnFireBlue firCharChallenge 1

execute if score #numPlayersOnFireRed firCharChallenge >= #numPlayersOnTeam multiItems run scoreboard players add @a[scores={Kit=15},team=Blue,tag=inCurrentMatch,predicate=!commands:in_practice_range] firCharChallenge 1

execute if score #numPlayersOnFireBlue firCharChallenge >= #numPlayersOnTeam multiItems run scoreboard players add @a[scores={Kit=15},team=Red,tag=inCurrentMatch,predicate=!commands:in_practice_range] firCharChallenge 1

execute as @a[scores={Kit=15,firCharChallenge=600..}] run advancement grant @s only commands:character_challenges/pot_roast_party

scoreboard players set #numPlayersOnFireRed firCharChallenge 0

scoreboard players set #numPlayersOnFireBlue firCharChallenge 0

#Pirates Map Stuff

execute if score #classicMap settings matches 2 run function commands:other/pirate_map

#School Nurse Cooldown Display

execute as @a[scores={Kit=16}] run function commands:cooldowns/school_nurse_display

#IV Drip

scoreboard players remove @a[scores={Kit=16,ivDripTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] ivDripTimer 1

scoreboard players add @e[type=item,tag=ivNeedle] ivDripTimer 1

kill @e[type=item,tag=ivNeedle,tag=!attached,scores={ivDripTimer=10..}]

execute as @e[type=item,tag=ivRed,tag=!attached] at @s as @p[team=Red,tag=!ivAttached,distance=..2] unless score @s Kit matches 16 run function commands:other/initialize_iv_drip

execute as @e[type=item,tag=ivBlue,tag=!attached] at @s as @p[team=Blue,tag=!ivAttached,distance=..2] unless score @s Kit matches 16 run function commands:other/initialize_iv_drip

execute as @a[team=Red,tag=ivAttached] at @s unless entity @a[team=Red,predicate=commands:holding/iv_drip,distance=..32] run function commands:other/iv_detach

execute as @a[team=Blue,tag=ivAttached] at @s unless entity @a[team=Blue,predicate=commands:holding/iv_drip,distance=..32] run function commands:other/iv_detach

execute as @a[team=Red,tag=ivAttached] at @s positioned ~ ~1.5 ~ as @n[type=armor_stand,tag=ivRed] run tp @s ~ ~ ~

execute as @a[team=Blue,tag=ivAttached] at @s positioned ~ ~1.5 ~ as @n[type=armor_stand,tag=ivBlue] run tp @s ~ ~ ~

#Ice Packs

scoreboard players remove @a[scores={Kit=16,multiItems=..1},predicate=commands:in_any_battlefield,tag=!notAlive] icePackTimer 1

loot give @a[team=Red,scores={icePackTimer=..0}] loot commands:main_abilities/ice_pack_red

loot give @a[team=Blue,scores={icePackTimer=..0}] loot commands:main_abilities/ice_pack_blue

scoreboard players set @a[scores={icePackTimer=..0}] icePackTimer 200

execute as @a[scores={icePackPassive=8..},tag=!upgraded] run function commands:other/ice_pack_passive

execute as @a[scores={icePackPassive=6..},tag=upgraded] run function commands:other/ice_pack_passive

execute as @e[type=snowball,tag=!icepackred,nbt={Item:{components:{"minecraft:custom_data":{icepackred:1b}}}}] at @s run function commands:ball/ice_pack_found_red

execute as @e[type=area_effect_cloud,tag=icepackred] unless predicate commands:is_riding_ice_pack_red at @s run function commands:ball/ice_pack_landed_red

execute as @e[type=snowball,tag=!icepackblue,nbt={Item:{components:{"minecraft:custom_data":{icepackblue:1b}}}}] at @s run function commands:ball/ice_pack_found_blue

execute as @e[type=area_effect_cloud,tag=icepackblue] unless predicate commands:is_riding_ice_pack_blue at @s run function commands:ball/ice_pack_landed_blue

#Defibrillator

scoreboard players remove @a[scores={defibrillatorTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] defibrillatorTimer 1

scoreboard players add @e[type=item,tag=defib] defibrillatorTimer 1

execute as @e[type=item,scores={defibrillatorTimer=5..}] at @s run function commands:other/defibrillator_kill

execute as @e[type=item,tag=defibRed] at @s as @p[distance=..2,team=Red] unless score @s Kit matches 16 run function commands:other/defibrillator_hit

execute as @e[type=item,tag=defibBlue] at @s as @p[distance=..2,team=Blue] unless score @s Kit matches 16 run function commands:other/defibrillator_hit

#Light Up Shoes

scoreboard players add @a[predicate=commands:armor/light_up_shoes] lightUpTimer 1

execute as @a[team=Red,predicate=commands:armor/light_up_shoes] at @s run effect give @a[team=Blue,distance=..10] glowing 2 0 true

execute as @a[team=Blue,predicate=commands:armor/light_up_shoes] at @s run effect give @a[team=Red,distance=..10] glowing 2 0 true

execute as @a[scores={lightUpTimer=20..}] run function commands:other/light_up_shoes

#First Aid Kit

scoreboard players add @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{firstaid:1b}}}},limit=1] firstAidTimer 1

execute as @e[type=item,scores={firstAidTimer=60..}] at @s run particle dust{color:[0.133,1.000,0.000],scale:1} ~ ~1 ~ 0 0 0 1 0

execute as @e[type=item,scores={firstAidTimer=60..},nbt={Item:{components:{"minecraft:custom_data":{firstaidred:1b}}}}] at @s as @p[distance=..2,team=Red] run function commands:other/first_aid_kit

execute as @e[type=item,scores={firstAidTimer=60..},nbt={Item:{components:{"minecraft:custom_data":{firstaidblue:1b}}}}] at @s as @p[distance=..2,team=Blue] run function commands:other/first_aid_kit

#Bleed Damage

scoreboard players remove @a[scores={bleedTimer=0..}] bleedTimer 1

scoreboard players add @a[scores={bleedTimer=0..}] bleedEffect 1

execute as @a[scores={bleedEffect=20..}] run damage @s 1 commands:bleed

scoreboard players set @a[scores={bleedEffect=20..}] bleedEffect 0

scoreboard players set @a[scores={bleedTimer=..-1}] bleedEffect 0

#Live-Attenuated Vaccine

effect clear @a[tag=vaccinated] nausea

effect clear @a[tag=vaccinated] slowness

effect clear @a[tag=vaccinated] weakness

execute as @a[tag=vaccinated] run function #commands:clear_slowness_attributes

execute as @a[tag=vaccinated] run function #commands:clear_weakness_attributes

#Inhaler

execute as @a[predicate=commands:holding/inhaler] run function commands:attributes/adds/add_inhaler_buffs

execute as @e[nbt={Item:{components:{"minecraft:custom_data":{inhaler:1b}}}}] at @s run function commands:other/pass_inhaler

#Universal Health Care (School Nurse Ultimate)

execute as @a[scores={Ultimate=31},tag=!notAlive,predicate=!commands:inventory/universal_health_care] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s UHCTimer 1

loot give @a[scores={UHCTimer=2800..}] loot commands:ultimates/universal_health_care

scoreboard players set @a[scores={UHCTimer=2800..}] UHCTimer 0

scoreboard players add @a[tag=UHC] UHCDur 1

execute as @a[tag=UHC,scores={UHCDur=200..}] run function commands:ultimates/universal_health_care_end

#10 Hour Energy (School Nurse Alt. Ultimate)

execute as @a[scores={Ultimate=32},tag=!notAlive,predicate=!commands:inventory/ten_hour_energy] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s 10HourTimer 1

loot give @a[scores={10HourTimer=1800..}] loot commands:ultimates/ten_hour_energy

scoreboard players set @a[scores={10HourTimer=1800..}] 10HourTimer 0

#Give menu item to people w/out it

execute as @a[predicate=commands:in_any_battlefield,predicate=!commands:inventory/menu,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run loot give @s loot commands:gameplay/menu

#Match ID Check for people returning while a game is over

execute if score #matchID matchID matches 0 as @a[scores={matchID=-2147483648..2147483647}] run function commands:starting/leave_battlefield_when_match_over

#Attribute Manager

function commands:attributes/attribute_score_manager

#Remove Arrows and tridents on ground

kill @e[type=arrow,nbt={inGround:1b}]

kill @e[type=trident,nbt={inGround:1b}]

#Score Reset

tag @a[scores={useBow=1..}] remove wrenched

scoreboard players reset @a[scores={useBow=1..}] useBow

scoreboard players set @a[nbt={OnGround:1b}] jump 0

scoreboard players set @a[scores={Jump=1..}] Jump 0

tag @a[scores={died=1..}] remove insured

scoreboard players reset @a[scores={died=1..}] scourgeKills

scoreboard players reset @a[scores={gliding=1..}] gliding

scoreboard players set @a[scores={Ninjakill=1..}] Ninjakill 0

scoreboard players reset @a[scores={damage=1..}] damage

scoreboard players reset @a[scores={died=1..}] killStreak

scoreboard players reset @a[scores={died=1..}] Mimic

scoreboard players reset @a[scores={damageTaken=1..}] damageTaken

scoreboard players reset @a[scores={useFishingRod=1..}] useFishingRod

scoreboard players reset @a[tag=!hasSmartDrone] droneDamage

execute as @a[scores={died=1..}] at @s run function commands:command_chunk/item_clear_filter

execute as @e[type=item,scores={ItemKill=1}] unless data entity @s Thrower run scoreboard players add @s Timer 1

kill @e[type=item,scores={ItemKill=1,Timer=2..}]

execute as @a[scores={died=1..}] at @s run tag @e[type=item,distance=..5,scores={ItemKill=1..}] add delete

kill @e[type=item,scores={ItemKill=1},tag=delete]

scoreboard players set @a[scores={died=1..}] died 0

#Advancement Clears

advancement revoke @a only commands:warrior_challenge_damage

advancement revoke @a only commands:warrior_challenge_kill

