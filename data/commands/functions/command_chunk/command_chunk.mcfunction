#Corrupt Credits

scoreboard players add #corrupt Timer 1

execute if score #corrupt Timer matches 1200.. if score #corruptcredit settings matches 0 run function commands:other/spawn_cc

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tag @e[type=item,x=9,y=53,z=-132,distance=..3,nbt={Item:{Count:5b,tag:{corruptcredit:1b}}}] add CCDelete

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tag @e[type=item,x=58,y=52,z=-1030,distance=..3,nbt={Item:{Count:5b,tag:{corruptcredit:1b}}}] add CCDelete

execute if score #gamemode settings matches 1 run tag @e[type=item,x=1051,y=53,z=-76,distance=..3,nbt={Item:{Count:5b,tag:{corruptcredit:1b}}}] add CCDelete

execute as @e[type=item,tag=CCDelete] run function commands:other/remove_extra_ccs

execute as @e[type=item,nbt={Item:{tag:{corruptcredit:1b}}}] run data merge entity @s {Health:1000}

#Disable movement abilities for people that are rooted

scoreboard players add @a[tag=rooted] rootedTimer 1

tag @a[scores={rootedTimer=61..}] remove rooted

scoreboard players reset @a[scores={rootedTimer=61..}] rootedTimer

#Assign Teams to Arrows shot by bows

execute as @e[type=arrow,tag=!getTeam] run function commands:other/arrow_get_team

#Kill Items and prevent players from dropping

execute as @e[type=item] store result entity @s Air short 1 run time query gametime

scoreboard players set @e[type=item] ItemKill 1

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:golden_apple",tag:{redhealingfruit:1b}}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:golden_apple",tag:{bluehealingfruit:1b}}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{tag:{fishcannonitemred:1b}}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{tag:{fishcannonitemblue:1b}}}] ItemKill 2

scoreboard players set @e[type=item,tag=fishCannon] ItemKill 2

scoreboard players set @e[type=item,tag=squidzooka] ItemKill 2

scoreboard players set @e[type=item,tag=egg] ItemKill 2

scoreboard players set @e[type=item,tag=dinnerItemRed] ItemKill 2

scoreboard players set @e[type=item,tag=dinnerItemBlue] ItemKill 2

scoreboard players set @e[type=item,tag=cCannonItem] ItemKill 2

scoreboard players set @e[type=item,tag=mWipe] ItemKill 2

scoreboard players set @e[type=item,tag=hook] ItemKill 2

scoreboard players set @e[type=item,tag=pCard] ItemKill 2

execute as @e[type=item,tag=!processed,scores={ItemKill=1}] run data modify entity @s Owner set from entity @s Thrower

execute as @e[type=item,tag=!processed,scores={ItemKill=1}] run data modify entity @s PickupDelay set value 0

tag @e[type=item] add processed

kill @e[type=item,nbt={Item:{tag:{gunblade:1b}}}]

kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}}]

kill @e[type=item,nbt={Item:{id:"minecraft:diamond_horse_armor"}}]

scoreboard players add @e[type=item,scores={ItemKill=1}] Timer 1

#Cavalry Charge (Warrior Ultimate)

execute as @a[scores={Ultimate=2},tag=!notAlive,predicate=!commands:inventory/cavalry_charge] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Horse 1

give @p[team=Red,scores={Ultimate=2,Horse=3000..}] bat_spawn_egg{CustomModelData:64,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Cavalry Charge","color":"#697052","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Get on a horse and stomp on your enemies!"}']},EntityTag:{id:bat,Tags:["redcavalry","cavalry"],Invulnerable:1,Silent:1},cavalry:1b,ultimateitem:1b,Enchantments:[{}]} 1

give @p[team=Blue,scores={Ultimate=2,Horse=3000..}] bat_spawn_egg{CustomModelData:64,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Cavalry Charge","color":"#697052","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Get on a horse and stomp on your enemies!"}']},EntityTag:{id:bat,Tags:["bluecavalry","cavalry"],Invulnerable:1,Silent:1},cavalry:1b,ultimateitem:1b,Enchantments:[{}]} 1

execute as @e[tag=cavalry,type=bat] run function commands:ultimates/cavalry_charge

scoreboard players set @a[scores={Horse1=1..}] Horse1 0

scoreboard players set @a[scores={Horse=3000..}] Horse 0

execute as @a[team=Red,tag=cavalryAlive] unless entity @e[tag=RedHorse] run function commands:ultimates/cavalry_dead 

execute as @a[team=Blue,tag=cavalryAlive] unless entity @e[tag=BlueHorse] run function commands:ultimates/cavalry_dead 

execute as @a[team=Red,scores={Ultimate=2}] at @s if data entity @s RootVehicle.Attach if entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:-1.0}]}] run data merge entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest] {Attributes:[{Name:generic.movement_speed,Base:0.35}]}

execute as @a[team=Blue,scores={Ultimate=2}] at @s if data entity @s RootVehicle.Attach if entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:-1.0}]}] run data merge entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest] {Attributes:[{Name:generic.movement_speed,Base:0.35}]}

execute as @a[team=Red,scores={Ultimate=2}] at @s unless data entity @s RootVehicle.Attach if entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}] run data merge entity @e[type=horse,tag=RedHorse,limit=1,sort=nearest] {Attributes:[{Name:generic.movement_speed,Base:-1.0}]}

execute as @a[team=Blue,scores={Ultimate=2}] at @s unless data entity @s RootVehicle.Attach if entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}] run data merge entity @e[type=horse,tag=BlueHorse,limit=1,sort=nearest] {Attributes:[{Name:generic.movement_speed,Base:-1.0}]}

#Minion Swarm

execute as @e[type=bat,tag=minionswarm] run function commands:other/minion_swarm

#Lightning Rod

scoreboard players add @e[type=fishing_bobber] LightningRod 1

execute as @e[type=fishing_bobber,scores={LightningRod=20..}] at @s run summon lightning_bolt

kill @e[type=fishing_bobber,scores={LightningRod=100..}]

#Mimics

execute as @e[type=armor_stand,name=Redmimic,scores={mimicdeath=1}] at @s run setblock ~ ~ ~ chest[facing=north]{Lock:"mrdoordash"}

execute as @e[type=armor_stand,name=Redmimic,scores={mimicdeath=100..}] at @s run scoreboard players set @a[team=Blue,distance=..4,limit=1] Death 1

execute as @a[team=Blue,scores={Death=1..}] at @s as @e[type=armor_stand,name=Redmimic,distance=..5] at @s run fill ~ ~-2 ~ ~ ~2 ~ air replace chest

execute as @a[team=Blue,scores={Death=1..}] at @s run kill @e[type=armor_stand,name=Redmimic,distance=..5]

teleport @a[scores={Death=1..}] -488 56 -120

scoreboard players add @a[x=-488,y=54,z=-120,distance=..10,gamemode=!spectator,gamemode=!creative,tag=!notAlive] Mimic 1

execute if entity @a[scores={Mimic=120..}] run tellraw @a [{"selector":"@a[scores={Mimic=120..}]"},{"text":" was eaten by a Mimic.","color":"white"}]

kill @a[scores={Mimic=120..}]

scoreboard players set @a[scores={Mimic=120..}] Mimic 0

scoreboard players set @a[scores={Death=1..}] Death 0

execute as @e[type=armor_stand,name=Bluemimic,scores={mimicdeath=1}] at @s run setblock ~ ~ ~ chest[facing=north]{Lock:"mrdoordash"}

execute as @e[type=armor_stand,name=Bluemimic,scores={mimicdeath=100..}] at @s run scoreboard players set @a[team=Red,distance=..4,limit=1] Death 1

execute as @a[team=Red,scores={Death=1..}] at @s as @e[type=armor_stand,name=Bluemimic,distance=..5] at @s run fill ~ ~-2 ~ ~ ~2 ~ air replace chest

execute as @a[team=Red,scores={Death=1..}] at @s run kill @e[type=armor_stand,name=Bluemimic,distance=..5]

execute as @a[scores={Mimic=1}] at @s run playsound royalsiege:misc.mimic master @s ~ ~ ~ 100 1

execute as @e[type=bat,name=Redmimic] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Redmimic"}',Invisible:1,Invulnerable:1,NoBasePlate:1}

execute as @e[type=bat,name=Bluemimic] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Bluemimic"}',Invisible:1,Invulnerable:1,NoBasePlate:1}

tp @e[type=bat,name=Redmimic] ~ -100 ~

tp @e[type=bat,name=Bluemimic] ~ -100 ~

scoreboard players add @e[type=armor_stand,name=Redmimic] mimicdeath 1

scoreboard players add @e[type=armor_stand,name=Bluemimic] mimicdeath 1

execute at @e[type=armor_stand,scores={mimicdeath=100..}] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 0 1 force

execute as @e[scores={mimicdeath=1200..}] at @s run fill ~ ~-2 ~ ~ ~1 ~ air replace chest

kill @e[type=armor_stand,scores={mimicdeath=1200..}] 

#Kick other people off of cavalry charge

execute as @a[scores={HorseDie=1..,Kit=2..}] at @s run tp @s ~ ~ ~

scoreboard players set @a[scores={HorseDie=1..}] HorseDie 0

#Flying Skeleton

execute as @e[type=bat,name=RedFlyingSkeleton] at @s run summon bat ~ ~1 ~ {Silent:1b,Invulnerable:1b,Tags:["FS"],Passengers:[{id:"minecraft:skeleton",Team:"Red",Health:50f,Tags:["S"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}},{id:"minecraft:tipped_arrow",Count:64b,tag:{CustomPotionEffects:[{Id:2b,Amplifier:3b,Duration:100}]}}],HandDropChances:[0.000F,-327.670F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000}]}]}

execute as @e[type=bat,name=BlueFlyingSkeleton] at @s run summon bat ~ ~1 ~ {Silent:1b,Invulnerable:1b,Tags:["FS"],Passengers:[{id:"minecraft:skeleton",Team:"Blue",Health:50f,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}},{id:"minecraft:tipped_arrow",Count:64b,tag:{CustomPotionEffects:[{Id:2b,Amplifier:3b,Duration:100}]}}],HandDropChances:[0.000F,0.000F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000}]}]}

tp @e[type=bat,name=RedFlyingSkeleton] ~ -100 ~

tp @e[type=bat,name=BlueFlyingSkeleton] ~ -100 ~

scoreboard players add @e[type=bat,tag=FS] Timer 1

kill @e[type=bat,scores={Timer=200..}]

#Sniper Bow No Gravity

execute as @e[type=arrow,nbt={damage:6.0d}] run data merge entity @s {NoGravity:1b} 

#Chaos Bow (Archer Ultimate)

execute as @a[scores={Kit=5,Ultimate=5},tag=!notAlive,predicate=!commands:inventory/chaos_bow_token] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s ChaosTimer 1

give @a[scores={ChaosTimer=4000..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Chaos Bow Token","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Redeemable for a Chaos Bow."}','{"text":"The bow lasts 20s."}']},CustomModelData:165,ultimateitem:1b,chaosbowtoken:1b} 1

scoreboard players reset @a[scores={ChaosTimer=4000..}] ChaosTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/chaos_bow_token] run tellraw @a [{"selector":"@s"},{"text":" is going chaotic!"}]

item replace entity @a[scores={usedCOAS=1..},predicate=commands:holding/chaos_bow_token] weapon.mainhand with crossbow{CustomModelData:72,display:{Name:'{"text":"Chaos Bow","color":"#FFF954","italic":false}',Lore:['{"text":"Shoots very quickly and shoots"}','{"text":"3 arrows at a time."}']},Unbreakable:1b,Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:quick_charge",lvl:5s}],chaosbow:1b} 1

scoreboard players add @a[predicate=commands:inventory/chaos_bow] chaosBowDur 1

execute as @a[scores={chaosBowDur=400..}] run function commands:ultimates/chaos_bow_end

#Kerfuffle (Wizard Ultimate)

execute as @a[scores={Ultimate=6},tag=!notAlive,predicate=!commands:inventory/kerfuffle] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Kerfuffle 1

give @a[scores={Ultimate=6,Kerfuffle=2800..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Kerfuffle","color":"#681CFF","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Scrambles the inventory of everyone on the opposing team,"}','{"text":" then give them blindness."}']},CustomModelData:74,ultimateitem:1b,kerfuffle:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={Kerfuffle=2800..}] Kerfuffle 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/kerfuffle] run function commands:ultimates/kerfuffle

#The Wall Spell

execute as @e[type=bat,name=Wall] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Wall"}',Invisible:1,Invulnerable:1,NoBasePlate:1}

tp @e[type=bat,name=Wall] ~ -100 ~

execute as @e[type=armor_stand,name=Wall] at @s run fill ~-3 ~ ~ ~4 ~4 ~1 bricks replace air

scoreboard players add @e[type=armor_stand,name=Wall] Wall 1

execute as @e[type=armor_stand,name=Wall,scores={Wall=160..}] at @s run fill ~-3 ~ ~ ~4 ~5 ~1 air replace bricks

kill @e[type=armor_stand,name=Wall,scores={Wall=160..}]

#Perma-Buffs (Buff Passives)

effect give @a[scores={foof=..19}] saturation 1 0 true

execute as @a[team=Red,scores={Kit=1},tag=!upgraded] at @s run effect give @a[team=Blue,distance=..5] slowness 2 0 true

execute as @a[team=Red,scores={Kit=3},tag=!upgraded] at @s run effect give @a[team=Red,distance=..5] resistance 2 0 true

execute as @a[team=Blue,scores={Kit=1},tag=!upgraded] at @s run effect give @a[team=Red,distance=..5] slowness 2 0 true

execute as @a[team=Blue,scores={Kit=3},tag=!upgraded] at @s run effect give @a[team=Blue,distance=..5] resistance 2 0 true

execute as @a[team=Red,scores={Kit=1},tag=upgraded] at @s run effect give @a[team=Blue,distance=..5] slowness 2 1 true

execute as @a[team=Red,scores={Kit=3},tag=upgraded] at @s run effect give @a[team=Red,distance=..5] resistance 8 0 true

execute as @a[team=Blue,scores={Kit=1},tag=upgraded] at @s run effect give @a[team=Red,distance=..5] slowness 2 1 true

execute as @a[team=Blue,scores={Kit=3},tag=upgraded] at @s run effect give @a[team=Blue,distance=..5] resistance 8 0 true

effect give @a[scores={Kit=5}] strength 1 0 true

effect clear @a[scores={Kit=12},tag=!upgraded] resistance

effect clear @a[scores={Kit=12},tag=!upgraded] strength

effect give @a[scores={Kit=14}] jump_boost 1 3 true

effect give @a[predicate=!commands:is_sneaking,scores={Kit=14}] slow_falling 2 0 true

effect give @a[predicate=commands:is_sneaking,scores={Kit=14}] levitation 1 200 true

effect clear @a[predicate=!commands:is_sneaking,scores={Kit=14}] levitation

effect clear @a[predicate=commands:is_sneaking,scores={Kit=14}] slow_falling

#Gravity Canceler

scoreboard players remove @a[scores={gravityTimer=1..},predicate=commands:inventory/gravity_canceler,predicate=commands:in_any_battlefield,tag=!notAlive] gravityTimer 1

execute as @a[scores={usedCOAS=1..,gravityTimer=..0},predicate=commands:holding/gravity_canceler] run function commands:other/gravity_canceler

#Cavalry Slowing

execute as @e[type=horse,tag=BlueHorse] at @s run effect give @a[team=Red,distance=..3] slowness 1 2 true

execute as @e[type=horse,tag=RedHorse] at @s run effect give @a[team=Blue,distance=..3] slowness 1 2 true

#Immortality (Guardian Ultimate)

execute as @a[scores={Ultimate=3},tag=!notAlive,predicate=!commands:inventory/immortality] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s immorTimer 1

give @a[scores={immorTimer=3200..,Ultimate=3}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Immortality","color":"#CEFF0A","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Enter a state of immortality for 7 seconds."}','{"text":"All teammates in a 10 block radius below 10 Health will become immune to damage."}','{"text":"Teammates can still die if they take fatal damage while above 10 Health."}']},CustomModelData:138,immortality:1b,ultimateitem:1b} 1

scoreboard players reset @a[scores={immorTimer=3200..}] immorTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/immortality] run function commands:ultimates/immortality

execute as @a[tag=immortality] at @s run function commands:ultimates/immortality_effects

scoreboard players add @a[tag=immortality] immorDur 1

execute as @a[scores={immorDur=140..}] run function commands:ultimates/immortality_end

#Lifeforce

execute as @a[scores={Ultimate=4},tag=!notAlive,predicate=!commands:inventory/lifeforce] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s LifeForce 1

give @a[scores={LifeForce=3600..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Life Force","color":"#C90606","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives everyone on your team a big boost in health for a short time"}']},CustomModelData:70,lifeforce:1b,ultimateitem:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={LifeForce=3600..}] LifeForce 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/lifeforce] run function commands:ultimates/lifeforce

#End of the Game (Classic)

scoreboard players add @a[predicate=commands:in_any_battlefield] End 1

execute if entity @a[team=Red,scores={End=100..}] unless entity @e[type=wither_skeleton,team=Blue,tag=King] if score #gamemode settings matches 0 run tag @a[team=Red] add End

execute if entity @a[team=Blue,scores={End=100..}] unless entity @e[type=wither_skeleton,team=Red,tag=King] if score #gamemode settings matches 0 run tag @a[team=Blue] add End

#End of the Game (TDM)

execute if entity @a[team=Red,scores={End=100..}] if score #redkills tdmKills >= #tdmreqkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Red] add End

execute if entity @a[team=Blue,scores={End=100..}] if score #bluekills tdmKills >= #tdmreqkills tdmKills if score #gamemode settings matches 1 run tag @a[team=Blue] add End

#Other end of game stuff

execute if entity @a[team=Red,tag=End] run title @a title ["",{"text":"Red Team Has Won!","color":"red"}]

execute if entity @a[team=Blue,tag=End] run title @a title ["",{"text":"Blue Team Has Won!","color":"blue"}]

execute as @a[tag=End,limit=1] run function commands:other/end

#TDM Display kills timer

execute if score #gamemode settings matches 1 run scoreboard players add #TDMTimer tdmTimer 1

execute if score #TDMTimer tdmTimer matches 400.. if score #gamemode settings matches 1 run tellraw @a [{"text":"Red team kill count: ","color":"red"},{"score":{"name":"#redkills","objective":"tdmKills"},"color":"green"},{"text":"/"},{"score":{"name":"#tdmreqkills","objective":"tdmKills"},"color":"green"},{"text":"\n"},{"text":"Blue team kill count: ","color":"blue"},{"score":{"name":"#bluekills","objective":"tdmKills"},"color":"green"},{"text":"/"},{"score":{"name":"#tdmreqkills","objective":"tdmKills"},"color":"green"}]

execute if score #TDMTimer tdmTimer matches 400.. if score #gamemode settings matches 1 run scoreboard players reset #TDMTimer tdmTimer

#Experience Spawner

execute as @e[type=bat,tag=xpspawner] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["xpspawner"]}

tp @e[type=bat,tag=xpspawner] ~ -100 ~

execute as @e[type=armor_stand,tag=xpspawner] at @s run fill ~ ~ ~ ~ ~ ~ spawner{SpawnCount:3,SpawnRange:10,Delay:0,MinSpawnDelay:10,MaxSpawnDelay:40,MaxNearbyEntities:100,RequiredPlayerRange:100,SpawnData:{id:"minecraft:experience_bottle",CustomNameVisible:0b,Motion:[0.0,1.0,0.0],CustomName:'{"text":"Experience Bomb"}'}} replace air

scoreboard players add @e[type=armor_stand,tag=xpspawner] xpspawner 1

execute as @e[type=armor_stand,tag=xpspawner,scores={xpspawner=300..}] at @s run fill ~ ~ ~ ~ ~ ~ air replace spawner

kill @e[type=armor_stand,tag=xpspawner,scores={xpspawner=300..}]

#Convert Gold Ingots to Siege Bucks

tag @e[type=item,predicate=commands:in_gold_pit,nbt={Item:{Count:1b,tag:{moneyitem:1b}}},limit=1] add convertToMoney

execute as @e[type=item,tag=convertToMoney] at @s run function commands:other/convert_to_money

#Convert Corrupt Credits to Bank

tag @e[type=item,predicate=commands:in_gold_pit,nbt={Item:{Count:1b,tag:{corruptcredit:1b}}},limit=1] add convertToBank

execute as @e[type=item,tag=convertToBank] at @s if entity @p[team=Red,distance=..4] run function commands:other/convert_to_bank_red

execute as @e[type=item,tag=convertToBank] at @s if entity @p[team=Blue,distance=..4] run function commands:other/convert_to_bank_blue

#Starting the map

execute as @p[scores={Start=1..}] at @s run function commands:starting/start_map

scoreboard players set @a[scores={Start=2}] players 0

#Wizard Minions

scoreboard players add @e[type=zombie,tag=Minion] MinionDeath 1

scoreboard players add @a[scores={Kit=6},predicate=commands:in_any_battlefield,tag=!notAlive] WizardMinion 1

execute as @a[team=Red,tag=!upgraded,scores={WizardMinion=400..}] at @s run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsVillager:0,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:leather_chestplate,tag:{display:{color:16711680}}},{}],HandItems:[{Count:1b,id:wooden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.movement_speed,Base:0.2},{Name:zombie.spawn_reinforcements,Base:0}],Health:15.0f,Team:"Red",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute as @a[team=Blue,tag=!upgraded,scores={WizardMinion=400..}] at @s run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsVillager:0,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:leather_chestplate,tag:{display:{color:1184511}}},{}],HandItems:[{Count:1b,id:wooden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.movement_speed,Base:0.2},{Name:zombie.spawn_reinforcements,Base:0}],Health:15.0f,Team:"Blue",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute as @a[team=Red,tag=upgraded,scores={WizardMinion=320..}] at @s run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsVillager:0,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:leather_chestplate,tag:{display:{color:16711680}}},{}],HandItems:[{Count:1b,id:wooden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.movement_speed,Base:0.2},{Name:zombie.spawn_reinforcements,Base:0}],Health:15.0f,Team:"Red",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

execute as @a[team=Blue,tag=upgraded,scores={WizardMinion=320..}] at @s run summon zombie ~ ~1 ~ {CustomName:'{"text":"Wizard Minion"}',CustomNameVisible:1,IsVillager:0,IsBaby:1,ArmorItems:[{},{},{Count:1b,id:leather_chestplate,tag:{display:{color:1184511}}},{}],HandItems:[{Count:1b,id:wooden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}},{}],ArmorDropChances:[0.085F,0.085F,0.0F,0.085F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.max_health,Base:12},{Name:generic.movement_speed,Base:0.2},{Name:zombie.spawn_reinforcements,Base:0}],Health:15.0f,Team:"Blue",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:10000,ShowParticles:0b}],Tags:["WM","Minion"]}

scoreboard players set @a[tag=upgraded,scores={WizardMinion=320..}] WizardMinion 0

scoreboard players set @a[tag=!upgraded,scores={WizardMinion=400..}] WizardMinion 0

tp @e[type=zombie,scores={MinionDeath=1800..}] ~ -100 ~

#Dropping Money

execute unless entity @a[team=Blue,predicate=commands:inventory/insurance] as @a[scores={Deaths=1..},team=Blue] at @s run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:gold_ingot",tag:{moneyitem:1b,Enchantments:[{}],HideFlags:1,CustomModelData:148,display:{Name:'{"text":"Siege Coin","color":"#FFCC00","italic":false}',Lore:['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}']}}},Health:1000}

execute unless entity @a[team=Red,predicate=commands:inventory/insurance] as @a[scores={Deaths=1..},team=Red] at @s run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:gold_ingot",tag:{moneyitem:1b,Enchantments:[{}],HideFlags:1,CustomModelData:148,display:{Name:'{"text":"Siege Coin","color":"#FFCC00","italic":false}',Lore:['{"text":"Throw into the gold pit at your castle to convert into Siege Bucks."}']}}},Health:1000}

execute if entity @a[team=Red,predicate=commands:inventory/insurance] as @a[scores={Deaths=1..},team=Red] run scoreboard players add @s Money 100

execute if entity @a[team=Blue,predicate=commands:inventory/insurance] as @a[scores={Deaths=1..},team=Blue] run scoreboard players add @s Money 100

execute as @e[type=item,nbt={Item:{tag:{moneyitem:1b}}}] run data merge entity @s {Health:1000}

execute as @e[type=item,scores={ItemKill=2}] at @s if block ~ ~-0.1 ~ lava run kill @s

scoreboard players set @a[scores={Deaths=1..}] Deaths 0

#Your King is being attacked

scoreboard players set @e[type=wither_skeleton,tag=King,nbt={HurtTime:10s}] Defend 1

scoreboard players add #redking kingAttackCD 1

scoreboard players add #blueking kingAttackCD 1

execute as @e[type=wither_skeleton,tag=King,scores={Defend=1..}] run function commands:other/king_attacked

#Glowing effect

execute as @a[scores={Kit=5},predicate=!commands:inventory/glowing_effect,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s glowingEffectCD 1

give @a[scores={glowingEffectCD=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Glowing Effect","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Make all enemies glow for a short time."}']},CustomModelData:13,glowingeffect:1b} 1

scoreboard players set @a[scores={glowingEffectCD=..0}] glowingEffectCD 1200

execute as @a[scores={Kit=5}] run scoreboard players operation @s glowingStore = @s glowingEffectCD

execute as @a[scores={Kit=5}] store result score @s glowingDis run scoreboard players operation @s glowingStore /= #ticks constant

title @a[scores={Kit=5}] actionbar [{"text":"Glowing Effect: ","color":"green"},{"score":{"name":"*","objective":"glowingDis"},"color":"aqua"}]

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/glowing_effect] run function commands:other/glowing_effect

#Fake Money

tag @e[type=item,nbt={Item:{tag:{fakemoneyred:1b}}}] add pickupdelay

tag @e[type=item,nbt={Item:{tag:{fakemoneyblue:1b}}}] add pickupdelay

execute as @e[type=item,tag=pickupdelay,tag=!stop] run data merge entity @s {PickupDelay:15,Health:10}

tag @e[type=item,tag=pickupdelay] add stop

execute as @e[type=item,nbt={Item:{tag:{fakemoneyred:1b}}}] at @s run data modify entity @s Owner set from entity @p[team=Blue] UUID

execute as @e[type=item,nbt={Item:{tag:{fakemoneyblue:1b}}}] at @s run data modify entity @s Owner set from entity @p[team=Red] UUID

scoreboard players add @e[type=item,tag=pickupdelay,tag=stop] Timer 1

kill @e[type=item,tag=pickupdelay,tag=stop,scores={Timer=2400..}]

#Lava Trap

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/lava_trap] run function commands:other/lava_trap_init

scoreboard players add @a[tag=lavatrap] Lava 1

execute as @a[scores={Lava=200..}] run function commands:other/lava_trap_end

#Davy Jones' Locker

execute as @e[type=bat,tag=Locker] at @s run summon armor_stand ~ ~-1.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"lower"}},NoGravity:1b,Time:1}]}

execute as @e[type=bat,tag=Locker] at @s run summon armor_stand ~ ~-0.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"upper"}},NoGravity:1b,Time:1}]}

execute as @e[type=bat,tag=Locker] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Locker"}',CustomNameVisible:0b,Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b}

tp @e[type=bat,tag=Locker] ~ -100 ~

execute as @e[type=armor_stand,name=Locker] at @s run tag @p[team=Blue,distance=..3] add locked

execute as @e[type=armor_stand,name=LockerBlue] at @s run tag @p[team=Red,distance=..3] add locked

execute as @a[tag=locked] at @s run function commands:other/davy_jones_locker

scoreboard players add @e[type=armor_stand,name=Locker] lockerdeath 1

scoreboard players add @e[type=armor_stand,name=LockerBlue] lockerdeath 1

execute as @e[type=armor_stand,scores={lockerdeath=1200..}] at @s run kill @e[type=armor_stand,tag=davyLocker,distance=..2]

kill @e[type=armor_stand,scores={lockerdeath=1200..}]

execute as @e[type=bat,tag=LockerBlue] at @s run summon armor_stand ~ ~-1.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"lower"}},NoGravity:1b,Time:1}]}

execute as @e[type=bat,tag=LockerBlue] at @s run summon armor_stand ~ ~-0.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"upper"}},NoGravity:1b,Time:1}]}

execute as @e[type=bat,tag=LockerBlue] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"LockerBlue"}',CustomNameVisible:0b,Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b}

tp @e[type=bat,tag=LockerBlue] ~ -100 ~

execute as @e[type=falling_block,tag=davyLocker] run data merge entity @s {Time:1}

#Chain Hook

execute as @a[scores={cHookCD=1..},predicate=commands:inventory/chain_hook,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s cHookCD 1

tag @a[scores={usedCOAS=1..},predicate=commands:holding/chain_hook] add chain

execute as @a[tag=chain,scores={cHookCD=..0}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:other/chain_hook_shot

tag @a[tag=chain] remove chain

execute as @e[type=item,tag=hookRed] at @s run tag @p[distance=..1.5,team=Blue] add hooked

execute as @e[type=item,tag=hookBlue] at @s run tag @p[distance=..1.5,team=Red] add hooked

execute as @a[tag=hooked] run function commands:other/chain_hook

scoreboard players add @e[type=item,tag=hook] chainHook 1

scoreboard players add @a[tag=hooked] chainHook 1

execute as @a[scores={chainHook=10..}] at @s run function commands:other/chain_hook_pull

kill @e[type=item,tag=hook,scores={chainHook=10..}]

execute as @a[scores={Kit=7}] run scoreboard players operation @s cHookStore = @s cHookCD

execute as @a[scores={Kit=7}] store result score @s cHookDis run scoreboard players operation @s cHookStore /= #ticks constant

title @a[scores={Kit=7},predicate=commands:inventory/chain_hook] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Lava Trap: ","color":"green"},{"score":{"name":"*","objective":"lavaTrapDis"},"color":"aqua"},{"text":"   Chain Hook: ","color":"green"},{"score":{"name":"*","objective":"cHookDis"},"color":"aqua"}]

#Treasure Chest (Pirate Ultimate)

execute as @a[scores={Ultimate=7},tag=!notAlive,predicate=!commands:inventory/treasure_chest] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Treasure 1

give @a[team=Red,scores={Treasure=3200..}] bat_spawn_egg{CustomModelData:76,CanPlaceOn:["#commands:can_place_on"],ultimateitem:1b,treasurechest:1b,HideFlags:16,display:{Name:'{"text":"Treasure Chest","color":"gold","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Contains Corrupt Credits and a wide variety"}','{"text":"of shop items from any class."}']},EntityTag:{id:bat,Silent:1b,Invulnerable:1b,Tags:["Treasure","TRed"]},Enchantments:[{}]} 1

give @a[team=Blue,scores={Treasure=3200..}] bat_spawn_egg{CustomModelData:76,CanPlaceOn:["#commands:can_place_on"],ultimateitem:1b,treasurechest:1b,HideFlags:16,display:{Name:'{"text":"Treasure Chest","color":"gold","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Contains Corrupt Credits and a wide variety"}','{"text":"of shop items from any class."}']},EntityTag:{id:bat,Silent:1b,Invulnerable:1b,Tags:["Treasure","TBlue"]},Enchantments:[{}]} 1

scoreboard players set @a[scores={Treasure=3200..}] Treasure 0

execute as @e[type=bat,tag=Treasure] at @s run summon armor_stand ~ ~29 ~ {Invulnerable:1b,Invisible:1b,Tags:["Chest"]}

execute as @e[type=bat,tag=TRed] at @s run summon falling_block ~ ~30 ~ {BlockState:{Name:"minecraft:chest",Properties:{facing:"north"}},TileEntityData:{Lock:"Golden Cutlass",LootTable:"commands:chests/treasure_chest_red"},Time:1,HurtEntities:1b,FallHurtMax:60,FallHurtAmount:2f,Tags:["FallingChest"]}

execute as @e[type=bat,tag=TBlue] at @s run summon falling_block ~ ~30 ~ {BlockState:{Name:"minecraft:chest",Properties:{facing:"north"}},TileEntityData:{Lock:"Golden Cutlass",LootTable:"commands:chests/treasure_chest_blue"},Time:1,HurtEntities:1b,FallHurtMax:60,FallHurtAmount:2f,Tags:["FallingChest"]}

execute as @e[type=falling_block,tag=FallingChest] at @s run particle happy_villager ~ ~ ~ 0 0 0 1 10

execute if entity @e[type=bat,tag=TRed] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=7}]"},{"text":" uncovered a Treasure Chest!"}]

execute if entity @e[type=bat,tag=TBlue] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=7}]"},{"text":" uncovered a Treasure Chest!"}]

tp @e[type=bat,tag=Treasure] ~ -100 ~

scoreboard players add @e[type=armor_stand,tag=Chest] TreasureDelete 1

execute as @e[type=armor_stand,scores={TreasureDelete=299}] at @s run summon fireball ~ ~ ~ {power:[0.0,-1.0,0.0],ExplosionPower:0}

execute as @e[type=armor_stand,scores={TreasureDelete=300..}] at @s run fill ~ ~ ~ ~ ~1 ~ air replace chest

execute as @e[type=armor_stand,scores={TreasureDelete=300..}] at @s run kill @e[type=item,scores={ItemKill=1},distance=..4]

tp @e[type=armor_stand,scores={TreasureDelete=301..}] ~ -100 ~

#Ent Items

scoreboard players remove @a[scores={Kit=8},predicate=commands:in_any_battlefield,tag=!notAlive] hFruitTimer 1

execute as @a[scores={Kit=8},predicate=!commands:inventory/blossom,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s blossomTimer 1

execute as @a[scores={Kit=8},predicate=!commands:inventory/rooting_spell,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s rootingTimer 1

execute at @a[team=Red,scores={hFruitTimer=..0}] run summon item ~ ~ ~ {Tags:["spawn"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Healing Fruit","italic":false}',Lore:['{"text":"Deletes itself from the ground if not picked up within 5 seconds"}']},HideFlags:1,CustomModelData:30,redhealingfruit:1b,healingfruit:1b,Enchantments:[{}]}}}

execute at @a[team=Blue,scores={hFruitTimer=..0}] run summon item ~ ~ ~ {Tags:["spawn"],Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Healing Fruit","italic":false}',Lore:['{"text":"Deletes itself from the ground if not picked up within 5 seconds"}']},HideFlags:1,CustomModelData:30,bluehealingfruit:1b,healingfruit:1b,Enchantments:[{}]}}}

give @a[scores={blossomTimer=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blossom","color":"#22FF00","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives a burst of energy and healing to nearby allies."}']},CustomModelData:31,blossom:1b} 1

give @a[team=Red,scores={rootingTimer=..0}] carrot_on_a_stick{CustomModelData:32,display:{Name:'{"text":"Rooting Spell","color":"#228A12","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Right click to shoot a rooting beam."}','{"text":"Successful hits will root an enemy,"}','{"text":"freezing them in place for a short time."}','{"text":"Has a maximum range of 10 blocks."}']},Unbreakable:1b,rootingspellred:1b,rootingspell:1b,Enchantments:[{}]} 1

give @a[team=Blue,scores={rootingTimer=..0}] carrot_on_a_stick{CustomModelData:32,display:{Name:'{"text":"Rooting Spell","color":"#228A12","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Right click to shoot a rooting beam."}','{"text":"Successful hits will root an enemy,"}','{"text":"freezing them in place for a short time."}','{"text":"Has a maximum range of 10 blocks."}']},Unbreakable:1b,rootingspellblue:1b,rootingspell:1b,Enchantments:[{}]} 1

execute as @a[scores={Kit=8}] run scoreboard players operation @s hFruitStore = @s hFruitTimer

execute as @a[scores={Kit=8}] store result score @s hFruitDis run scoreboard players operation @s hFruitStore /= #ticks constant

execute as @a[scores={Kit=8}] run scoreboard players operation @s blossomStore = @s blossomTimer

execute as @a[scores={Kit=8}] store result score @s blossomDis run scoreboard players operation @s blossomStore /= #ticks constant

execute as @a[scores={Kit=8}] run scoreboard players operation @s rootingStore = @s rootingTimer

execute as @a[scores={Kit=8}] store result score @s rootingDis run scoreboard players operation @s rootingStore /= #ticks constant

title @a[scores={Kit=8}] actionbar [{"text":"Healing Fruit: ","color":"green"},{"score":{"name":"*","objective":"hFruitDis"},"color":"aqua"},{"text":"   Blossom: ","color":"green"},{"score":{"name":"*","objective":"blossomDis"},"color":"aqua"},{"text":"   Rooting Spell: ","color":"green"},{"score":{"name":"*","objective":"rootingDis"},"color":"aqua"}]

scoreboard players set @a[scores={hFruitTimer=..0}] hFruitTimer 400

scoreboard players set @a[scores={blossomTimer=..0}] blossomTimer 400

scoreboard players set @a[scores={rootingTimer=..0}] rootingTimer 600

#Ent Voice line CD

scoreboard players add #entvoicered voicelineCD 1

scoreboard players add #entvoiceblue voicelineCD 1

#Blossom

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/blossom] at @s run function commands:other/blossom

#Healing Fruit

scoreboard players add @e[type=item,nbt={Item:{tag:{redhealingfruit:1b}}}] FruitRemove 1

scoreboard players add @e[type=item,nbt={Item:{tag:{bluehealingfruit:1b}}}] FruitRemove 1

execute as @e[type=item,scores={FruitRemove=1}] run data merge entity @s {PickupDelay:1}

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{tag:{redhealingfruit:1b}}}] at @s if entity @p[scores={Kit=8},dx=0] as @a[team=Red,distance=..100] unless score @s Kit matches 8 run tag @s add closest

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{tag:{bluehealingfruit:1b}}}] at @s if entity @p[scores={Kit=8},dx=0] as @a[team=Blue,distance=..100] unless score @s Kit matches 8 run tag @s add closest

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{tag:{redhealingfruit:1b}}}] at @s if entity @p[scores={Kit=8},dx=0] run tellraw @a[team=Red,scores={Kit=8}] [{"text":"You gave a healing fruit to: ","color":"green"},{"selector":"@p[team=Red,tag=closest,distance=..100]"}]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{tag:{bluehealingfruit:1b}}}] at @s if entity @p[scores={Kit=8},dx=0] run tellraw @a[team=Blue,scores={Kit=8}] [{"text":"You gave a healing fruit to: ","color":"green"},{"selector":"@p[team=Blue,tag=closest,distance=..100]"}]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{tag:{redhealingfruit:1b}}}] at @s run tp @s @p[team=Red,tag=closest]

execute as @e[type=item,tag=!spawn,scores={FruitRemove=1..},nbt={Item:{tag:{bluehealingfruit:1b}}}] at @s run tp @s @p[team=Blue,tag=closest]

tag @a[tag=closest] remove closest

tp @e[type=item,scores={FruitRemove=100..}] ~ -100 ~

#Max of 5 healing fruits

execute as @a[team=Red] store result score @s hFruitNum run data get entity @s Inventory[{tag:{redhealingfruit:1b}}].Count

execute as @a[team=Red] run scoreboard players operation #redHFruit hFruitNum += @s hFruitNum

execute if score #redHFruit hFruitNum > #numPlayersOnTeam multiItems run clear @a[team=Red,scores={Kit=8}] golden_apple{redhealingfruit:1b} 1

execute as @a[team=Blue] store result score @s hFruitNum run data get entity @s Inventory[{tag:{bluehealingfruit:1b}}].Count

execute as @a[team=Blue] run scoreboard players operation #blueHFruit hFruitNum += @s hFruitNum

execute if score #blueHFruit hFruitNum > #numPlayersOnTeam multiItems run clear @a[team=Blue,scores={Kit=8}] golden_apple{bluehealingfruit:1b} 1

scoreboard players reset #redHFruit hFruitNum

scoreboard players reset #blueHFruit hFruitNum

#Rooting Spell

tag @a[scores={usedCOAS=1..},predicate=commands:holding/rooting_spell] add rooter

execute as @a[team=Red,tag=rooter] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/rooting_spell_start_ray

execute as @a[team=Blue,tag=rooter] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/rooting_spell_blue_start_ray

tag @a[tag=rooter] remove rooter

#Poisonous Mushroom

execute at @e[type=bat,tag=redmushroom] run summon area_effect_cloud ~ ~ ~ {Particle:"block brown_mushroom_block",ReapplicationDelay:10,Radius:4f,RadiusPerTick:0f,RadiusOnUse:0.3f,Duration:160,Effects:[{Id:19b,Amplifier:1b,Duration:20,ShowParticles:0b}],Tags:["redmushroom","mushroom"]}

execute at @e[type=bat,tag=redmushroom] if score #entvoicered voicelineCD matches 40.. run playsound royalsiege:abilities.poison_mushroom master @a[distance=..15] ~ ~ ~ 1 1

execute at @e[type=bat,tag=redmushroom] if score #entvoicered voicelineCD matches 40.. run scoreboard players reset #entvoicered voicelineCD 

execute at @e[type=bat,tag=bluemushroom] run summon area_effect_cloud ~ ~ ~ {Particle:"block brown_mushroom_block",ReapplicationDelay:10,Radius:4f,RadiusPerTick:0f,RadiusOnUse:0.3f,Duration:160,Effects:[{Id:19b,Amplifier:1b,Duration:20,ShowParticles:0b}],Tags:["bluemushroom","mushroom"]}

execute at @e[type=bat,tag=bluemushroom] if score #entvoiceblue voicelineCD matches 40.. run playsound royalsiege:abilities.poison_mushroom master @a[distance=..15] ~ ~ ~ 1 1

execute at @e[type=bat,tag=bluemushroom] if score #entvoiceblue voicelineCD matches 40.. run scoreboard players reset #entvoiceblue voicelineCD 

teleport @e[type=bat,tag=redmushroom] ~ -100 ~

teleport @e[type=bat,tag=bluemushroom] ~ -100 ~

execute as @e[type=area_effect_cloud,tag=mushroom] store result score @s mushroomRadius run data get entity @s Radius

#Tree of Life (Ent Ultimate)

execute as @a[scores={Ultimate=8},tag=!notAlive,predicate=!commands:inventory/tree_of_life] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Tree 1

give @a[team=Red,scores={Tree=3200..}] bat_spawn_egg{CustomModelData:78,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Tree of Life","color":"#22FF00","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Sprouts a tree from the ground that provides healing to allies and damage to enemies."}']},EntityTag:{id:bat,Silent:1b,Invulnerable:1b,Tags:["Tree"]},ultimateitem:1b,treeoflife:1b,treeoflife:2b,Enchantments:[{}]} 1

give @a[team=Blue,scores={Tree=3200..}] bat_spawn_egg{CustomModelData:78,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'{"text":"Tree of Life","color":"#22FF00","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Sprouts a tree from the ground that provides healing to allies and damage to enemies."}']},EntityTag:{id:bat,Silent:1b,Invulnerable:1b,Tags:["TreeBlue"]},ultimateitem:1b,treeoflifeblue:1b,treeoflife:2b,Enchantments:[{}]} 1

scoreboard players set @a[scores={Tree=3200..}] Tree 0

execute as @e[type=bat,tag=Tree] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Treeoflife"]}

execute as @e[type=bat,tag=Tree] at @s run playsound entity.player.levelup master @a[distance=..20] ~ ~ ~ 1 0

execute if entity @e[type=bat,tag=Tree] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=8}]"},{"text":" has grown a tree!"}]

tp @e[type=bat,tag=Tree] ~ -100 ~

execute as @e[type=bat,tag=TreeBlue] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["TreeoflifeBlue"]}

execute as @e[type=bat,tag=TreeBlue] at @s run playsound entity.player.levelup master @a[distance=..20] ~ ~ ~ 1 0

execute if entity @e[type=bat,tag=TreeBlue] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=8}]"},{"text":" has grown a tree!"}]

tp @e[type=bat,tag=TreeBlue] ~ -100 ~

execute as @e[type=armor_stand,tag=Treeoflife] run function commands:ultimates/tree_of_life

execute as @e[type=armor_stand,tag=TreeoflifeBlue] run function commands:ultimates/tree_of_life_blue

scoreboard players add @e[type=armor_stand,tag=Treeoflife] Treeremove 1

execute as @e[type=armor_stand,scores={Treeremove=200..}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace oak_leaves

execute as @e[type=armor_stand,scores={Treeremove=200..}] at @s run fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace oak_log

kill @e[type=armor_stand,scores={Treeremove=200..}]

scoreboard players add @e[type=armor_stand,tag=TreeoflifeBlue] Treeremove 1

#Pirate Items

scoreboard players remove @a[scores={Kit=7},predicate=commands:in_any_battlefield,tag=!notAlive] fakeTimer 1

execute as @a[scores={Kit=7},predicate=!commands:inventory/lava_trap,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s lavaTrapTimer 1

give @a[team=Red,scores={fakeTimer=..0}] gold_ingot{CustomModelData:148,display:{Name:'{"text":"Fake Money","italic":false}',Lore:['{"text":"Throw onto the ground and watch an unsuspecting enemy explode!"}']},HideFlags:1,Enchantments:[{}],fakemoneyred:1b} 1

give @a[team=Blue,scores={fakeTimer=..0}] gold_ingot{CustomModelData:148,display:{Name:'{"text":"Fake Money","italic":false}',Lore:['{"text":"Throw onto the ground and watch an unsuspecting enemy explode!"}']},HideFlags:1,Enchantments:[{}],fakemoneyblue:1b} 1

give @a[scores={lavaTrapTimer=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Lava Trap","color":"red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Use to temporarily open up a lava trap in your castle!"}']},CustomModelData:15,lavatrap:1b} 1

execute as @a[scores={Kit=7}] run scoreboard players operation @s fakeStore = @s fakeTimer

execute as @a[scores={Kit=7}] store result score @s fakeDis run scoreboard players operation @s fakeStore /= #ticks constant

execute as @a[scores={Kit=7}] run scoreboard players operation @s lavaTrapStore = @s lavaTrapTimer

execute as @a[scores={Kit=7}] store result score @s lavaTrapDis run scoreboard players operation @s lavaTrapStore /= #ticks constant

title @a[scores={Kit=7},predicate=!commands:inventory/chain_hook] actionbar [{"text":"Fake Money: ","color":"green"},{"score":{"name":"*","objective":"fakeDis"},"color":"aqua"},{"text":"   Lava Trap: ","color":"green"},{"score":{"name":"*","objective":"lavaTrapDis"},"color":"aqua"}]

scoreboard players set @a[scores={fakeTimer=..0},tag=!upgraded] fakeTimer 900

scoreboard players set @a[scores={fakeTimer=..0},tag=upgraded] fakeTimer 600

scoreboard players set @a[scores={lavaTrapTimer=..0}] lavaTrapTimer 1500

#Home Warp

execute at @e[type=bat,tag=Home] run give @a[distance=..3,team=Red,tag=rooted] bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Home Warp"}',Lore:['{"text":"Teleports you back to your throne room."}','{"If you are playing TDM, you will teleport to the Corrupt Credit generator."}']},HideFlags:16,EntityTag:{Tags:["Home"],Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Home"}'}}

execute at @e[type=bat,tag=HomeBlue] run give @a[distance=..3,team=Blue,tag=rooted] bat_spawn_egg{CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Home Warp"}',Lore:['{"text":"Teleports you back to your throne room."}','{"If you are playing TDM, you will teleport to the Corrupt Credit generator."}']},HideFlags:16,EntityTag:{Tags:["HomeBlue"],Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"HomeBlue"}'}}

execute as @e[type=bat,tag=Home] at @s run effect give @p[team=Red,tag=!rooted] resistance 5 2 true

execute as @e[type=bat,tag=Home] at @s run effect give @p[team=Red,tag=!rooted] regeneration 5 2 true

execute if score #gamemode settings matches 0 as @e[type=bat,tag=Home] at @s run execute as @p[team=Red,tag=!rooted] at @s run teleport @s 6 53 -182

execute if score #gamemode settings matches 1 as @e[type=bat,tag=Home] at @s run execute as @p[team=Red,tag=!rooted] at @s run teleport @s 1051 53 -76

tp @e[type=bat,tag=Home] ~ -100 ~

execute as @e[type=bat,tag=HomeBlue] at @s run effect give @p[team=Blue,tag=!rooted] resistance 5 2 true

execute as @e[type=bat,tag=HomeBlue] at @s run effect give @p[team=Blue,tag=!rooted] regeneration 5 2 true

execute if score #gamemode settings matches 0 as @e[type=bat,tag=HomeBlue] at @s run teleport @p[team=Blue,tag=!rooted] 12 53 -83

execute if score #gamemode settings matches 0 as @e[type=bat,tag=HomeBlue] at @s run teleport @p[team=Blue,tag=!rooted] 1051 53 -76

tp @e[type=bat,tag=HomeBlue] ~ -100 ~

#Shielding Spell

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/shielding_spell] at @s run function commands:other/shielding_spell

#Rejuvenating Spell

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/rejuvenating_spell] at @s run function commands:other/rejuvenating_spell

#Vigor Spell

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/vigor_spell] at @s run function commands:other/vigor_spell

#Wizard Fireballs

execute as @a[scores={usedCOAS=1..,FireballTimer=120..},predicate=commands:holding/fireball_launcher] at @s run tag @s add wizard

execute as @a[tag=wizard] at @s run function commands:other/wizard_fireball

scoreboard players add @a[scores={Kit=6}] FireballTimer 1

execute as @a[scores={FireballTimer=120},predicate=commands:inventory/fireball_launcher] run function commands:replace/fireball_launcher_ready

scoreboard players set @a[scores={died=1..}] FireballTimer 0

tag @a[tag=wizard] remove wizard

#Wizard Lightning Staff

execute as @a[scores={usedCOAS=1..,LightningTimer=120..},predicate=commands:holding/lightning_staff] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/lightning_staff_start_ray

scoreboard players add @a[scores={Kit=6}] LightningTimer 1

scoreboard players remove @a[scores={LightningTimer=961..}] LightningTimer 1

execute as @a[scores={LightningTimer=120},predicate=commands:inventory/lightning_staff] run function commands:replace/lightning_staff_ready

scoreboard players set @a[scores={died=1..}] LightningTimer 0

#Menu Item Initial Text

tellraw @p[team=Red,scores={usedCOAS=1..},predicate=commands:holding/menu] ["",{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Menu!","color":"#5AF6F9"},{"text":"\n\n"},{"text":"[Shops]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 64"},"hoverEvent":{"action":"show_text","contents":{"text":"Opens up the Shop.","color":"green"}}},{"text":"                       ","color":"gold"},{"text":"[Withdraw Siege Coin]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 65"},"hoverEvent":{"action":"show_text","contents":{"text":"Withdraws 150 Siege Bucks into the gold ingot form\n(200 if you are Pirate)","color":"green"}}},{"text":"\n\n\n\n","color":"gold"},{"text":"[Purchase Arrows]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 66"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 100 Siege Bucks\nGives you 32 arrows.","color":"gold"}}},{"text":"           ","color":"gold"},{"text":"[Withdraw Corrupt Credit]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 67"},"hoverEvent":{"action":"show_text","contents":{"text":"Withdraws 1 Corrupt Credit from your team's bank.","color":"green"}}},{"text":"\n\n\nAmount of Corrupt Credits in Bank: ","color":"gold"},{"score":{"name":"#red","objective":"corruptBank"},"color":"gold"},{"text":"\n\n"},{"text":"+","color":"green"},{"text":"=========================================================================\n","color":"yellow"}]

tellraw @p[team=Blue,scores={usedCOAS=1..},predicate=commands:holding/menu] ["",{"text":"+","color":"green"},{"text":"=========================================================================","color":"yellow"},{"text":"\n"},{"text":"Welcome to the Menu!","color":"#5AF6F9"},{"text":"\n\n"},{"text":"[Shops]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 64"},"hoverEvent":{"action":"show_text","contents":{"text":"Opens up the Shop.","color":"green"}}},{"text":"                       ","color":"gold"},{"text":"[Withdraw Siege Coin]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 65"},"hoverEvent":{"action":"show_text","contents":{"text":"Withdraws 150 Siege Bucks into the gold ingot form\n(200 if you are Pirate)","color":"green"}}},{"text":"\n\n\n\n","color":"gold"},{"text":"[Purchase Arrows]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 66"},"hoverEvent":{"action":"show_text","contents":{"text":"Cost - 100 Siege Bucks\nGives you 32 arrows.","color":"gold"}}},{"text":"           ","color":"gold"},{"text":"[Withdraw Corrupt Credit]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger textClick set 67"},"hoverEvent":{"action":"show_text","contents":{"text":"Withdraws 1 Corrupt Credit from your team's bank.","color":"green"}}},{"text":"\n\n\nAmount of Corrupt Credits in Bank: ","color":"gold"},{"score":{"name":"#blue","objective":"corruptBank"},"color":"gold"},{"text":"\n\n"},{"text":"+","color":"green"},{"text":"=========================================================================\n","color":"yellow"}]

#Give chaos bow users the arrow back

give @a[scores={chaosbow=1..}] arrow{CustomModelData:12,bottomlessquiver:1b,display:{Name:'{"text":"Bottomless Quiver","italic":false}'}} 1

scoreboard players set @a[scores={chaosbow=1..}] chaosbow 0

#Experience Bomb Blaster

execute as @a[scores={expBombTimer=1..},predicate=commands:inventory/exp_blaster,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s expBombTimer 1

execute as @a[scores={expBombTimer=..0,usedCOAS=1..},predicate=commands:holding/exp_bomb_blaster] at @s run function commands:other/exp_bomb_blaster

execute as @a[scores={Kit=6}] run scoreboard players operation @s expBombStore = @s expBombTimer

execute as @a[scores={Kit=6}] store result score @s expBombDis run scoreboard players operation @s expBombStore /= #ticks constant

title @a[scores={Kit=6},predicate=commands:inventory/exp_blaster] actionbar [{"text":"Eject Button: ","color":"green"},{"score":{"name":"*","objective":"ejectDis"},"color":"aqua"},{"text":"   Withering Potion: ","color":"green"},{"score":{"name":"*","objective":"witherDis"},"color":"aqua"},{"text":"   Exp. Bomb Blaster: ","color":"green"},{"score":{"name":"*","objective":"expBombDis"},"color":"aqua"}]

execute as @e[tag=stop,type=experience_bottle] store success entity @s Air short 1 if data entity @s {Air:0s}

execute as @e[type=experience_orb] at @s run summon fireball ~ ~ ~ {CustomNameVisible:0b,ExplosionPower:3,power:[0.0,-2.0,0.0],CustomName:'{"text":"Experience Bomb","color":"green"}',Item:{id:"minecraft:experience_bottle",Count:1b},Tags:["fm"]}

kill @e[type=experience_orb]

#King Bossbar

execute store result bossbar minecraft:redking value run data get entity @e[type=wither_skeleton,team=Red,tag=King,limit=1] Health

execute store result bossbar minecraft:blueking value run data get entity @e[type=wither_skeleton,team=Blue,tag=King,limit=1] Health

#Reveal Drone

execute as @e[type=bat,tag=Reveal] at @s run summon zombified_piglin ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:4f,IsBaby:1b,Tags:["Drone"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:4}]}

tp @e[type=bat,tag=Reveal] ~ -100 ~

execute as @e[type=zombified_piglin,tag=Drone] at @s run effect give @a[team=Blue,distance=..12] glowing 1 0 true

execute as @e[type=zombified_piglin,tag=Drone] at @s run effect give @a[team=Blue,distance=..12] slowness 1 0 true
 
execute as @e[type=zombified_piglin,tag=Drone] at @s run particle dust 1.000 1.000 0.000 1 ~ ~ ~ 0 0 0 1 10 normal

execute as @e[type=bat,tag=RevealBlue] at @s run summon zombified_piglin ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:4f,IsBaby:1b,Tags:["DroneBlue"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:4}]}

tp @e[type=bat,tag=RevealBlue] ~ -100 ~

execute as @e[type=zombified_piglin,tag=DroneBlue] at @s run effect give @a[team=Red,distance=..12] glowing 1 0 true

execute as @e[type=zombified_piglin,tag=DroneBlue] at @s run effect give @a[team=Red,distance=..12] slowness 1 0 true

execute as @e[type=zombified_piglin,tag=DroneBlue] at @s run particle dust 1.000 1.000 0.000 1 ~ ~ ~ 0 0 0 1 10 normal

scoreboard players add @e[type=zombified_piglin,tag=Drone] DroneDeath 1

scoreboard players add @e[type=zombified_piglin,tag=DroneBlue] DroneDeath 1

kill @e[type=zombified_piglin,scores={DroneDeath=600..}]

#Clear absorption from people with no absorption hearts

execute as @a[nbt={AbsorptionAmount:0.0f}] run effect clear @s absorption

#Give menu item to people w/out it

execute as @a[predicate=commands:in_any_battlefield,predicate=!commands:inventory/menu] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run give @s carrot_on_a_stick{CustomModelData:5,display:{Name:'{"text":"Menu","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Opens up a text menu where you"}','{"text":"can purchase items pertaining"}','{"text":"to your class. You can also"}','{"text":"withdraw money and corrupt credits, and purchase arrows."}','{"text":"You can also see how many corrupt credits your team\'s bank has."}']},HideFlags:1,Unbreakable:1b,menu:1b,Enchantments:[{}]} 1

#Wizard Items

execute as @a[scores={Kit=6},predicate=!commands:inventory/eject_button,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s ejectTimer 1

execute as @a[scores={Kit=6},predicate=!commands:inventory/withering_potion,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s witherTimer 1

give @a[scores={ejectTimer=..0}] carrot_on_a_stick{CustomModelData:3,display:{Name:'{"text":"Eject Button","color":"green"}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Ejects you in the direction you\'re looking in."}','{"text":"You also receive brief damage resistance when using it."}','{"text":"You are required to jump before using it."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],ejectbutton:1b} 1

give @a[scores={witherTimer=..0}] lingering_potion{display:{Name:"\"Withering Potion\""},CustomPotionEffects:[{Id:20,Amplifier:2,Duration:80}],witheringpotion:1b} 1

scoreboard players set @a[scores={ejectTimer=..0}] ejectTimer 600

scoreboard players set @a[scores={witherTimer=..0}] witherTimer 900

execute as @a[scores={Kit=6}] run scoreboard players operation @s ejectStore = @s ejectTimer

execute as @a[scores={Kit=6}] store result score @s ejectDis run scoreboard players operation @s ejectStore /= #ticks constant

execute as @a[scores={Kit=6}] run scoreboard players operation @s witherStore = @s witherTimer

execute as @a[scores={Kit=6}] store result score @s witherDis run scoreboard players operation @s witherStore /= #ticks constant

title @a[scores={Kit=6},predicate=!commands:inventory/exp_blaster] actionbar [{"text":"Eject Button: ","color":"green"},{"score":{"name":"*","objective":"ejectDis"},"color":"aqua"},{"text":"   Withering Potion: ","color":"green"},{"score":{"name":"*","objective":"witherDis"},"color":"aqua"}]

#Eject Button

tag @a[scores={usedCOAS=1..},predicate=commands:holding/eject_button] add eject

tag @a[tag=rooted] remove eject

execute as @a[tag=eject] at @s run teleport @s ~ ~1.5 ~

execute as @a[tag=eject] at @s anchored eyes positioned ^ ^ ^-0.5 anchored feet run summon creeper ~ ~ ~ {Health:1000f,ExplosionRadius:-1b,Fuse:1,ignited:1b,Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.attack_damage,Base:1},{Name:generic.attack_knockback,Base:8.0}],Tags:["ejectbutton"]}

effect give @a[tag=eject] resistance 1 3 true

execute as @e[type=creeper,tag=ejectbutton] at @s run teleport @s ~ ~-0.3 ~

execute as @e[type=creeper,tag=ejectbutton] at @s if block ~ ~ ~ #commands:can_place_on_without_grass run function commands:other/eject_stuck

clear @a[tag=eject] carrot_on_a_stick{ejectbutton:1b} 1

tag @a[tag=eject] remove eject

#Ninja Items

scoreboard players remove @a[scores={Kit=2},predicate=commands:in_any_battlefield,tag=!notAlive] NinjaItems 1

give @a[team=Red,scores={NinjaItems=..0}] bat_spawn_egg{CustomModelData:8,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'[{"text":"S","italic":false,"color":"#999999"},{"text":"m","italic":false,"color":"#909090"},{"text":"o","italic":false,"color":"#888888"},{"text":"k","italic":false,"color":"#808080"},{"text":"e ","italic":false,"color":"#787878"},{"text":"B","italic":false,"color":"#6f6f6f"},{"text":"o","italic":false,"color":"#676767"},{"text":"m","italic":false,"color":"#5f5f5f"},{"text":"b","italic":false,"color":"#575757"}]',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Creates a large smoke cloud that obscures vision."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["smoke"]}} 1

give @a[team=Blue,scores={NinjaItems=..0}] bat_spawn_egg{CustomModelData:8,CanPlaceOn:["#commands:can_place_on"],HideFlags:16,display:{Name:'[{"text":"S","italic":false,"color":"#999999"},{"text":"m","italic":false,"color":"#909090"},{"text":"o","italic":false,"color":"#888888"},{"text":"k","italic":false,"color":"#808080"},{"text":"e ","italic":false,"color":"#787878"},{"text":"B","italic":false,"color":"#6f6f6f"},{"text":"o","italic":false,"color":"#676767"},{"text":"m","italic":false,"color":"#5f5f5f"},{"text":"b","italic":false,"color":"#575757"}]',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Creates a large smoke cloud that obscures vision."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["smokeblue"]}} 1

scoreboard players set @a[scores={NinjaItems=..0}] NinjaItems 900

execute as @a[scores={Kit=2}] run scoreboard players operation @s smokeStore = @s NinjaItems

execute as @a[scores={Kit=2}] store result score @s smokeDis run scoreboard players operation @s smokeStore /= #ticks constant

title @a[scores={Kit=2}] actionbar [{"text":"Smoke Bomb: ","color":"green"},{"score":{"name":"*","objective":"smokeDis"},"color":"aqua"}]

#Ninja Dash

scoreboard players add #ninjavoicered voicelineCD 1

scoreboard players add #ninjavoiceblue voicelineCD 1

scoreboard players add @a[scores={Kit=2},predicate=commands:in_any_battlefield,tag=!notAlive] dashcharge 1

scoreboard players set @a[scores={dashcharge=361..},tag=!upgraded] dashcharge 361

scoreboard players set @a[scores={dashcharge=301..},tag=upgraded] dashcharge 301

execute as @a[scores={usedCOAS=1..,Kit=2,dashcharge=120..},tag=!upgraded,tag=!rooted,predicate=commands:holding/ninja_dash] at @s run tag @s add dash

execute as @a[scores={usedCOAS=1..,Kit=2,dashcharge=100..},tag=upgraded,tag=!rooted,predicate=commands:holding/ninja_dash] at @s run tag @s add dash

execute as @a[tag=dash] at @s unless score @s shadow matches 1.. anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/ninja_dash_start_ray

tag @a[tag=dash] remove dash

#Smoke Bomb

execute as @e[type=bat,tag=smoke] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:4f,RadiusPerTick:-0.01f,Duration:100,Tags:["smoke"]}

tp @e[type=bat,tag=smoke] ~ -100 ~

execute at @e[type=area_effect_cloud,tag=smoke,tag=!stop] as @p[team=Red,scores={Kit=2}] at @s if score #ninjavoicered voicelineCD matches 60.. run playsound royalsiege:abilities.smoke_bomb master @a[distance=..8]

execute at @e[type=area_effect_cloud,tag=smoke,tag=!stop] as @p[team=Red,scores={Kit=2}] at @s if score #ninjavoicered voicelineCD matches 60.. run scoreboard players reset #ninjavoicered voicelineCD

tag @e[type=area_effect_cloud,tag=smoke] add stop

execute at @e[type=area_effect_cloud,tag=smoke] run effect give @a[team=Blue,predicate=!commands:armor/enhanced_space_helmet,distance=..5] blindness 2 0 true

execute as @e[type=bat,tag=smokeblue] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:4f,RadiusPerTick:-0.01f,Duration:100,Tags:["smokeblue"]}

tp @e[type=bat,tag=smokeblue] ~ -100 ~

execute at @e[type=area_effect_cloud,tag=smokeblue,tag=!stop] as @p[team=Blue,scores={Kit=2}] at @s if score #ninjavoiceblue voicelineCD matches 60.. run playsound royalsiege:abilities.smoke_bomb master @a[distance=..8]

execute at @e[type=area_effect_cloud,tag=smokeblue,tag=!stop] as @p[team=Blue,scores={Kit=2}] at @s if score #ninjavoiceblue voicelineCD matches 60.. run scoreboard players reset #ninjavoiceblue voicelineCD

tag @e[type=area_effect_cloud,tag=smokeblue] add stop

execute at @e[type=area_effect_cloud,tag=smokeblue] run effect give @a[team=Red,predicate=!commands:armor/enhanced_space_helmet,distance=..5] blindness 2 0 true

#Ninja Strength passive

effect give @a[scores={Ninjakill=1..,Kit=2}] strength 8 0 true

scoreboard players add @a[scores={Ninjakill=1..,Kit=2}] dashcharge 120

#Display amount of dash charges

execute if entity @a[scores={Kit=2}] run function commands:other/display_dash_charges

#C4

execute at @e[type=bat,tag=c4] run summon villager ~ ~ ~ {IsBaby:1b,NoGravity:1b,Silent:1b,NoAI:1b,Health:4.0f,Tags:["c4"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:4}]}

tp @e[type=bat,tag=c4] ~ -100 ~

execute at @e[type=villager,tag=c4] run particle dust 0.271 0.271 0.271 1 ~ ~0.5 ~ 0 0 0 0 5 force

execute if entity @a[team=Red,scores={usedCOAS=1..},predicate=commands:holding/detonator_red] at @e[type=villager,tag=c4] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:6b,Invulnerable:1b,Fuse:1,Tags:["c4m"],ignited:1b,CustomName:'{"text":"C4"}'}

execute if entity @a[team=Red,scores={usedCOAS=1..},predicate=commands:holding/detonator_red] run kill @e[type=bat,tag=c4]

execute if entity @a[team=Red,scores={usedCOAS=1..},predicate=commands:holding/detonator_red] run clear @a[scores={usedCOAS=1..}] carrot_on_a_stick{detonatorRed:1b} 1

execute at @e[type=bat,tag=c4blue] run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:4.0f,Tags:["c4blue"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:4}]}

tp @e[type=bat,tag=c4blue] ~ -100 ~

execute at @e[type=villager,tag=c4blue] run particle dust 0.271 0.271 0.271 1 ~ ~0.5 ~ 0 0 0 0 5 force

execute if entity @a[team=Blue,scores={usedCOAS=1..},predicate=commands:holding/detonator_blue] at @e[type=villager,tag=c4blue] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:6b,Invulnerable:1b,Fuse:1,Tags:["c4m"],ignited:1b,CustomName:'{"text":"C4"}'}

execute if entity @a[team=Blue,scores={usedCOAS=1..},predicate=commands:holding/detonator_blue] run kill @e[type=bat,tag=c4blue]

execute if entity @a[team=Blue,scores={usedCOAS=1..},predicate=commands:holding/detonator_blue] run clear @a[scores={usedCOAS=1..}] carrot_on_a_stick{detonatorBlue:1b} 1

execute as @a[team=Red,scores={ninjaDeath=1..,Kit=2}] run kill @e[type=bat,tag=c4]

execute as @a[team=Blue,scores={ninjaDeath=1..,Kit=2}] run kill @e[type=bat,tag=c4blue]

scoreboard players reset @a[scores={ninjaDeath=1..}] ninjaDeath

#Bouncy Boots

effect give @a[predicate=commands:armor/bouncy_boots] jump_boost 2 1 true

#Chicken Bombs

execute at @e[type=chicken] run summon creeper ~ ~ ~ {CustomNameVisible:0b,ExplosionRadius:5b,Fuse:1,ignited:1b,CustomName:'{"text":"Chicken Bomb"}'}

#Shadow Step (Ninja Ultimate)

execute as @a[scores={Kit=2,Ultimate=1},tag=!notAlive,predicate=!commands:inventory/shadow_step] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s Ninjault 1

give @a[scores={Ninjault=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Shadow Step"}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Transform into a shadowy blob for 5 seconds."}','{"text":"While in this form, you are damage immune and"}','{"text":"you deal high damage to every enemy nearby"}','{"text":"(including the enemy king)."}']},CustomModelData:66,ultimateitem:1b,shadowstep:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={Ninjault=3200..}] Ninjault 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/shadow_step] at @s run function commands:ultimates/shadow_step

scoreboard players add @a[tag=shadow] shadow 1

execute as @a[scores={shadow=10..89}] at @s run function commands:ultimates/shadow_step_effects

execute as @a[scores={shadow=90..}] run function commands:ultimates/shadow_step_end

scoreboard players set @a[scores={died=1..}] shadow 90

#Gunblade

scoreboard players add @a[scores={Kit=10}] BurstTimer 1

scoreboard players add @a[scores={Kit=10}] PoisonTimer 1

scoreboard players add @a[scores={Kit=10}] ToxinTimer 1

scoreboard players add @a[scores={Kit=10}] StasisTimer 1

scoreboard players add @a[scores={Kit=10}] MidasTimer 1

scoreboard players add @a[scores={Kit=10}] ExplosionTimer 1

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/gunblade,predicate=!commands:is_sneaking,predicate=commands:inventory/gunblade_ammo] run tag @s add shoot

execute as @a[tag=shoot] at @s anchored eyes run function commands:other/gunblade

execute as @e[tag=stop,type=arrow] store success entity @s Air short 1 if data entity @s {Air:0s}

#Gunblade Falloff

scoreboard players add @e[type=arrow,tag=bullet] Timer 1

execute as @e[type=arrow,scores={Timer=8}] run data merge entity @s {damage:2.8d}

execute as @e[type=arrow,scores={Timer=16}] run data merge entity @s {damage:2.3d}

execute as @e[type=arrow,scores={Timer=24}] run data merge entity @s {damage:2.0d}

#Display which bullets are ready

execute if entity @a[scores={Kit=10}] run function commands:other/bullet_display

#Switch Bullet

tag @a[scores={Kit=10,usedCOAS=1..},predicate=commands:holding/gunblade,predicate=commands:is_sneaking] add switching

execute as @a[tag=switching] run function commands:other/robot_switch

#Robot items

execute as @a[scores={Kit=10},predicate=!commands:inventory/iron_wall,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s ironTimer 1

execute as @a[scores={Kit=10},predicate=!commands:inventory/disable,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s disableTimer 1

give @a[scores={ironTimer=..0}] minecraft:carrot_on_a_stick{display:{Name:'[{"text":"I","color":"dark_gray","italic":false},{"text":"r","color":"#515151","italic":false},{"text":"o","color":"#636363","italic":false},{"text":"n ","color":"#757575","italic":false},{"text":"W","color":"#878787","italic":false},{"text":"a","color":"#999999","italic":false},{"text":"l","color":"#ABABAB","italic":false},{"text":"l","color":"gray","italic":false}]',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives you full knockback resistance and"}','{"text":"high damage reduction, but slows your movement further."}','{"text":"Lasts 5 Seconds."}']},CustomModelData:42,ironwall:1b} 1

give @a[scores={disableTimer=..0}] minecraft:carrot_on_a_stick{display:{Name:'[{"text":"D","color":"#7A0404","italic":false},{"text":"i","color":"#850303","italic":false},{"text":"s","color":"#900202","italic":false},{"text":"a","color":"#9C0202","italic":false},{"text":"b","color":"#A70101","italic":false},{"text":"l","color":"#B20000","italic":false},{"text":"e","color":"dark_red","italic":false}]',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Removes all abilities from nearby enemy inventories."}']},CustomModelData:43,disable:1b} 1

execute as @a[scores={Kit=10}] run scoreboard players operation @s ironStore = @s ironTimer

execute as @a[scores={Kit=10}] store result score @s ironDis run scoreboard players operation @s ironStore /= #ticks constant

execute as @a[scores={Kit=10}] run scoreboard players operation @s disableStore = @s disableTimer

execute as @a[scores={Kit=10}] store result score @s disableDis run scoreboard players operation @s disableStore /= #ticks constant

scoreboard players set @a[scores={ironTimer=..0}] ironTimer 1200

scoreboard players set @a[scores={disableTimer=..0}] disableTimer 2000

#Multi-Barrel Attachment

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/multi_barrel_attachment] run function commands:other/multi_barrel_attachment

scoreboard players add @a[tag=multiBarrel] multiBarrel 1

tellraw @a[scores={multiBarrel=200..}] {"text":"Your gunblade lost its attachment!","color":"green"}

tag @a[tag=multiBarrel,scores={multiBarrel=200..}] remove multiBarrel

scoreboard players reset @a[scores={multiBarrel=200..}] multiBarrel

#Iron wall

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/iron_wall] run function commands:other/iron_wall

scoreboard players add @a[tag=iron_wall] ironwall 1

execute as @a[scores={ironwall=100..}] run function commands:other/iron_wall_end

#Disable

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/disable] run function commands:other/disable

#Virus Detector

execute if entity @a[scores={usedCOAS=1..},predicate=commands:holding/virus_detector,team=Blue] as @r[team=Red,predicate=commands:in_any_blue_castle] run function commands:other/virus_detector

execute if entity @a[scores={usedCOAS=1..},predicate=commands:holding/virus_detector,team=Red] as @r[team=Blue,predicate=commands:in_any_red_castle] run function commands:other/virus_detector

clear @a[scores={usedCOAS=1..},predicate=commands:holding/virus_detector] carrot_on_a_stick{virusdetector:1b} 1

#Memory Wipe (Robot Ultimate)

execute as @a[scores={Ultimate=10},tag=!notAlive,predicate=!commands:inventory/memory_wipe] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s RobotUlt 1

give @a[scores={RobotUlt=3000..}] carrot_on_a_stick{display:{Name:'[{"text":"M","color":"dark_red","italic":false},{"text":"e","color":"#930000","italic":false},{"text":"m","color":"#690000","italic":false},{"text":"o","color":"#3F0000","italic":false},{"text":"ry ","color":"#150000","italic":false},{"text":"W","color":"#3F0000","italic":false},{"text":"i","color":"#690000","italic":false},{"text":"p","color":"#930000","italic":false},{"text":"e","color":"dark_red","italic":false}]',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Clears the inventory of a random player on the enemy team."}']},Unbreakable:1b,CustomModelData:82,ultimateitem:1b,memorywipe:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={RobotUlt=3000..}] RobotUlt 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/memory_wipe] run tag @s add mWiper

execute as @a[tag=mWiper] at @s run function commands:ultimates/memory_wipe_shot

execute as @e[type=item,tag=mWipeRed] at @s run tag @p[team=Blue,distance=..3] add mWiped

execute as @e[type=item,tag=mWipeBlue] at @s run tag @p[team=Red,distance=..3] add mWiped

execute as @a[tag=mWiped] at @s run function commands:ultimates/memory_wipe

kill @e[type=item,tag=mWipe,nbt={OnGround:1b}]

scoreboard players set @a[team=Red,tag=wipeKill,scores={mWipeKill=1..}] RedKit 197

execute as @a[team=Red,tag=wipeKill,scores={mWipeKill=1..}] at @s run function commands:starting/red

scoreboard players set @a[team=Blue,tag=wipeKill,scores={mWipeKill=1..}] BlueKit 197

execute as @a[team=Blue,tag=wipeKill,scores={mWipeKill=1..}] at @s run function commands:starting/blue

tag @a[tag=wipeKill,scores={mWipeKill=1..}] remove wipeKill

scoreboard players reset @a[scores={mWipeKill=1..}] mWipeKill

tag @a[scores={died=1..}] remove wipeKill

#Damage gives ultimate charge

execute as @a[scores={Ultcharge=1..}] run function commands:other/ult_charge

scoreboard players set @a[scores={Ultcharge=1..}] Ultcharge 0

#Ultimate Charge Bossbars

execute as @a[scores={Ultimate=1..26}] run function commands:other/ultimate_bossbars

#Warrior Item

execute as @a[scores={Kit=1},predicate=!commands:inventory/seismic_slam,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s WarriorItem 1

give @a[scores={WarriorItem=..0}] carrot_on_a_stick{CustomModelData:6,display:{Name:'{"text":"Seismic Slam"}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives you strong jump boost for a very brief amount of time. "}','{"text":"It is advised to jump as soon as you use the item."}','{"text":"When you land, all nearby enemies are lifted into the air and will take fall damage."}']},Unbreakable:1b,slam:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={WarriorItem=..0}] WarriorItem 600

execute as @a[scores={Kit=1}] run scoreboard players operation @s slamStore = @s WarriorItem

execute as @a[scores={Kit=1}] run scoreboard players operation @s exChargeStore = @s exCharge

execute as @a[scores={Kit=1}] store result score @s slamDis run scoreboard players operation @s slamStore /= #ticks constant

execute as @a[scores={Kit=1}] store result score @s exChargeDis run scoreboard players operation @s exChargeStore /= #ticks constant

title @a[scores={Kit=1}] actionbar [{"text":"Seismic Slam: ","color":"green"},{"score":{"name":"*","objective":"slamDis"},"color":"aqua"},{"text":"     "},{"text":"Explosive Charge: ","color":"green"},{"score":{"name":"*","objective":"exChargeDis"},"color":"aqua"}]

#Seismic Slam

tag @a[scores={usedCOAS=1..},predicate=commands:holding/seismic_slam] add Slam

tag @a[tag=rooted] remove Slam

effect give @a[tag=Slam] jump_boost 3 7 true

clear @a[tag=Slam] carrot_on_a_stick{slam:1b} 1

tag @a[tag=Slam] remove Slam

tag @a[predicate=commands:effects/seismic_slam,scores={Jump=1..},nbt={OnGround:0b}] add slamming

execute at @a[tag=slamming,predicate=commands:effects/seismic_slam] run playsound royalsiege:abilities.seismic_slam master @a[distance=..10] ~ ~ ~ 1

execute as @a[tag=slamming,predicate=commands:effects/seismic_slam] at @s run effect clear @s jump_boost

effect give @a[tag=slamming,nbt={OnGround:0b}] resistance 1 2 true

execute at @a[team=Red,tag=slamming,nbt={OnGround:1b}] run effect give @a[team=Blue,distance=..5] levitation 1 11 true

execute at @a[team=Red,tag=slamming,nbt={OnGround:1b}] run playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 0.2

execute at @a[team=Blue,tag=slamming,nbt={OnGround:1b}] run effect give @a[team=Red,distance=..5] levitation 1 11 true

execute at @a[team=Blue,tag=slamming,nbt={OnGround:1b}] run playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 0.2

execute at @a[tag=slamming,nbt={OnGround:1b}] run particle dust 0.239 0.239 0.239 1 ~ ~ ~ 1.5 0 1.5 1 100 normal

effect clear @a[tag=slamming,nbt={OnGround:1b}] resistance

scoreboard players reset @a[tag=slamming,nbt={OnGround:1b}] slamSuspend

scoreboard players set @a[scores={Jump=1..}] Jump 0

tag @a[tag=slamming,nbt={OnGround:1b}] remove slamming

#Invisibility Cloak (Ninja Alt. Ultimate)

execute as @a[scores={Kit=2,Ultimate=11},tag=!notAlive,predicate=!commands:inventory/invisibility_cloak] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s InvisTimer 1

give @a[scores={InvisTimer=3000..}] carrot_on_a_stick{display:{Name:'{"text":"Invisibility Cloak","color":"gray","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shroud yourself in an invisibility cloak, making you fully invisible."}','{"text":"While in this state, you have increased speed and damage, but much less defense."}','{"text":"Lasts 10 seconds."}']},CustomModelData:137,inviscloak:1b,ultimateitem:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={InvisTimer=3000..}] InvisTimer 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/invis_cloak] run function commands:ultimates/invis_cloak

scoreboard players add @a[tag=cloaked] InvisDur 1

execute as @a[scores={InvisDur=200..}] run function commands:ultimates/invis_cloak_end

tag @a[scores={died=1..}] remove cloaked

scoreboard players reset @a[scores={died=1..}] InvisDur

#Decay Aura (Ent Alt. Ultimate)

execute as @a[scores={Kit=8,Ultimate=18},tag=!notAlive,predicate=!commands:inventory/decay_aura] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s DecayTimer 1

give @a[scores={DecayTimer=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Decay Aura","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Damages everything around you, including non-players."}','{"text":"Also heals your king if it is nearby."}']},CustomModelData:79,ultimateitem:1b,decay:1b,Enchantments:[{}]} 1

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/decay_aura] at @s run function commands:ultimates/decay_aura_init

scoreboard players set @a[scores={DecayTimer=3200..}] DecayTimer 0

scoreboard players add @a[tag=decay] DecayD 1

scoreboard players add @a[tag=decay] Decay 1

execute as @a[tag=decay] run function commands:ultimates/decay_aura

scoreboard players set @a[scores={DecayD=22..}] DecayD 0

scoreboard players set @a[scores={died=1..}] Decay 100

tag @a[scores={Decay=100..}] remove decay

scoreboard players set @a[scores={Decay=100..}] DecayD 0

scoreboard players set @a[scores={Decay=100..}] Decay 0

#Custom Death messages

execute as @e[type=fishing_bobber] at @s run tag @a[distance=..4,scores={Message=1..}] add DIED4

execute as @e[type=area_effect_cloud,tag=l_message] at @s run tag @a[distance=..4,scores={Message=1..}] add DIED4

execute as @e[type=fireball,tag=fm,tag=!no] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["f_message"]}

execute as @e[type=fireball,tag=fm] at @s run teleport @e[type=armor_stand,tag=f_message] @s

tag @e[type=fireball,tag=fm,tag=!no] add no

execute as @e[type=armor_stand,tag=f_message] at @s if entity @a[distance=..4,scores={Message=1..}] unless entity @e[type=fireball,tag=fm,tag=no,distance=..3] run tag @a[distance=..3,scores={Message=1..}] add DIED

execute as @e[type=fireball,tag=fmm,tag=!no] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["fm_message"]}

execute as @e[type=fireball,tag=fmm] at @s run teleport @e[type=armor_stand,tag=fm_message] @s

tag @e[type=fireball,tag=fmm,tag=!no] add no

execute as @e[type=armor_stand,tag=fm_message] at @s if entity @a[distance=..4,scores={Message=1..}] unless entity @e[type=fireball,tag=fmm,tag=no,distance=..3] run tag @a[distance=..3,scores={Message=1..}] add DIED2

execute as @e[type=creeper,tag=c4m,tag=!no] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["c4_message"]}

execute as @e[type=creeper,tag=c4m] at @s run teleport @e[type=armor_stand,tag=c4_message] @s

tag @e[type=creeper,tag=c4m,tag=!no] add no

execute as @e[type=armor_stand,tag=c4_message] at @s if entity @a[distance=..4,scores={Message=1..}] unless entity @e[type=creeper,tag=c4m,tag=no,distance=..2] run tag @a[distance=..2,scores={Message=1..}] add DIED3

execute as @a[scores={Message=1..}] at @s if entity @e[type=armor_stand,tag=Chest,distance=..2] run tag @s add tChestDeath 

execute as @a[scores={Message=1..},limit=1] run function commands:custom_deaths/custom_deaths

execute as @e[type=armor_stand,tag=f_message] at @s unless entity @e[type=fireball,tag=fm,tag=no,distance=..2] run kill @s

execute as @e[type=armor_stand,tag=fm_message] at @s unless entity @e[type=fireball,tag=fmm,tag=no,distance=..2] run kill @s

execute as @e[type=armor_stand,tag=c4_message] at @s unless entity @e[type=creeper,tag=c4m,tag=no,distance=..2] run kill @s

scoreboard players add @e[tag=l_message] dmDelay 1

kill @e[tag=l_message,scores={dmDelay=11..}]

scoreboard players set @a[nbt={OnGround:1b}] fall 0

scoreboard players set @a[scores={KillP=1..}] KillP 0

scoreboard players set @a[scores={Message=1..}] Message 0

#Ultimate Checker

scoreboard players add #ultChecker Timer 1

execute if score #ultChecker Timer matches 5.. as @a[tag=!spectator] run function commands:other/ult_checker

#Angel Items

execute as @a[scores={Kit=4},predicate=!commands:inventory/assault_spell,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s HealerItems 1

execute as @a[scores={Kit=4},predicate=!commands:inventory/healing_spell,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s healSpell 1

give @a[scores={healSpell=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Healing Spell","color":"#FF08FF","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives nearby teammates instant health and regeneration."}']},CustomModelData:18,HealingSpell:1b} 1

give @a[scores={HealerItems=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Defensive Spell","color":"#00FFBB","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives nearby teammates absorption and resistance."}']},Unbreakable:1b,CustomModelData:19,DefensiveSpell:1b} 1

give @a[scores={HealerItems=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Assault Spell","color":"#820000","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives nearby teammates speed and strength."}']},CustomModelData:20,AssaultSpell:1b} 1

scoreboard players set @a[scores={healSpell=..0}] healSpell 300

scoreboard players set @a[scores={HealerItems=..0}] HealerItems 500

execute as @a[scores={Kit=4}] run scoreboard players operation @s hSpellStore = @s healSpell

execute as @a[scores={Kit=4}] store result score @s hSpellDis run scoreboard players operation @s hSpellStore /= #ticks constant

execute as @a[scores={Kit=4}] run scoreboard players operation @s oSpellStore = @s HealerItems

execute as @a[scores={Kit=4}] store result score @s oSpellDis run scoreboard players operation @s oSpellStore /= #ticks constant

title @a[team=Red,scores={Kit=4}] actionbar [{"text":"Healing Spell: ","color":"green"},{"score":{"name":"*","objective":"hSpellDis"},"color":"aqua"},{"text":"   Other Spells: ","color":"green"},{"score":{"name":"*","objective":"oSpellDis"},"color":"aqua"},{"text":"   Healstreak: ","color":"green"},{"score":{"name":"#redHS","objective":"healstreak"},"color":"aqua"},{"text":"/6","color":"green"}]

title @a[team=Blue,scores={Kit=4}] actionbar [{"text":"Healing Spell: ","color":"green"},{"score":{"name":"*","objective":"hSpellDis"},"color":"aqua"},{"text":"   Other Spells: ","color":"green"},{"score":{"name":"*","objective":"oSpellDis"},"color":"aqua"},{"text":"   Healstreak: ","color":"green"},{"score":{"name":"#blueHS","objective":"healstreak"},"color":"aqua"},{"text":"/6","color":"green"}]

scoreboard players add #angelspellsred voicelineCD 1

scoreboard players add #angelspellsblue voicelineCD 1

#Healing Spell

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/healing_spell] run function commands:other/healing_spell

#Defensive Spell

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/defensive_spell] run function commands:other/defensive_spell

#Assault Spell

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/assault_spell] run function commands:other/assault_spell

#Clear old arrows

scoreboard players add @e[type=arrow] Timer 1

kill @e[type=arrow,scores={Timer=80..}]

#more money from defending

execute as @a[team=Red,predicate=commands:in_any_red_castle] run scoreboard players add @s Timer 1

execute as @a[team=Blue,predicate=commands:in_any_blue_castle] run scoreboard players add @s Timer 1

#kill multiple cavalry horses

execute as @e[type=horse,tag=RedHorse] run scoreboard players add Horse horsed 1

execute as @e[type=horse,tag=BlueHorse] run scoreboard players add HorseB horsed 1

execute if score Horse horsed matches 2.. run tp @e[type=horse,tag=RedHorse,limit=1] ~ -100 ~

execute if score HorseB horsed matches 2.. run tp @e[type=horse,tag=BlueHorse,limit=1] ~ -100 ~

execute if score Horse horsed matches 2.. run kill @e[type=horse,tag=RedHorse,limit=1]

execute if score HorseB horsed matches 2.. run kill @e[type=horse,tag=BlueHorse,limit=1]

scoreboard players set Horse horsed 0

scoreboard players set HorseB horsed 0

#Particles for players with healing effects

execute as @a[predicate=commands:effects/absorption,predicate=!commands:effects/invisibility] at @s run particle dust 0.933 1.000 0.000 1 ~ ~2.2 ~ 0.933 1.000 0.000 1 0 force

execute as @a[predicate=commands:effects/regeneration,predicate=!commands:effects/invisibility] at @s run particle dust 1.000 0.000 1.000 1 ~ ~2.4 ~ 1.000 0.000 1.000 1 0 force

execute as @a[predicate=commands:effects/health_boost,predicate=!commands:effects/invisibility] at @s run particle dust 1.000 0.000 0.000 1 ~ ~2.6 ~ 1.000 0.000 0.000 1 0 force

#Guardian Items

execute as @a[scores={Kit=3},predicate=!commands:inventory/defensive_spell,predicate=commands:in_any_battlefield,tag=!notAlive] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players remove @s defensiveSpell 1

scoreboard players remove @a[scores={Kit=3},predicate=commands:in_any_battlefield,tag=!notAlive] turretTimer 1

give @a[scores={defensiveSpell=..0}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Defensive Spell","color":"#00FFBB","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives nearby teammates absorption and resistance."}']},Unbreakable:1b,CustomModelData:19,DefensiveSpell:1b} 1

give @a[team=Red,scores={turretTimer=..0}] minecraft:skeleton_spawn_egg{CustomModelData:68,turret:1b,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Turret","color":"#B8481F","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}']},HideFlags:16,Enchantments:[{}],EntityTag:{Tags:["turret"],Silent:1b,Team:"Red",Health:25f,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680},Unbreakable:1b}},{id:"minecraft:dispenser",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-1,Operation:0,UUID:[I;8219412,-14895,-132010193,55327132]}]}}],ArmorDropChances:[0.085F,0.085F,-327.670F,0.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.knockback_resistance,Base:1}]}} 1

give @a[team=Blue,scores={turretTimer=..0}] minecraft:skeleton_spawn_egg{CustomModelData:68,turret:1b,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Turret","color":"#B8481F","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}']},HideFlags:16,Enchantments:[{}],EntityTag:{Tags:["turret"],Silent:1b,Team:"Blue",Health:25f,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:255},Unbreakable:1b}},{id:"minecraft:dispenser",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-1,Operation:0,UUID:[I;8219412,-14895,-132010193,55327132]}]}}],ArmorDropChances:[0.085F,0.085F,-327.670F,0.000F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:200000}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.knockback_resistance,Base:1}]}} 1

scoreboard players set @a[scores={defensiveSpell=..0}] defensiveSpell 400

scoreboard players set @a[scores={turretTimer=..0}] turretTimer 600

execute as @a[scores={Kit=3}] run scoreboard players operation @s dSpellStore = @s defensiveSpell

execute as @a[scores={Kit=3}] store result score @s dSpellDis run scoreboard players operation @s dSpellStore /= #ticks constant

execute as @a[scores={Kit=3}] run scoreboard players operation @s turretStore = @s turretTimer

execute as @a[scores={Kit=3}] store result score @s turretDis run scoreboard players operation @s turretStore /= #ticks constant

title @a[scores={Kit=3},predicate=!commands:inventory/absorption_shield] actionbar [{"text":"Defensive Spell: ","color":"green"},{"score":{"name":"*","objective":"dSpellDis"},"color":"aqua"},{"text":"   Turret: ","color":"green"},{"score":{"name":"*","objective":"turretDis"},"color":"aqua"}]

#Rally (Warrior Alt. Ultimate)

execute as @a[scores={Kit=1,Ultimate=12},tag=!notAlive,predicate=!commands:inventory/rally] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s RallyTimer 1

give @a[scores={RallyTimer=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Rally"}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Rally your team together!"}','{"text":"After a 0.5 second delay, teleport all of your teammates to you."}','{"text":"Every teammate receives strength and speed."}','{"text":"The warrior receives resistance II."}']},CustomModelData:65,ultimateitem:1b,rally:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={RallyTimer=3200..}] RallyTimer 0

tag @a[scores={usedCOAS=1..},predicate=commands:holding/rally] add rally

scoreboard players add @a[tag=rally] RallyDelay 1

execute as @a[scores={RallyDelay=1}] run function commands:ultimates/rally_initial

execute as @a[scores={RallyDelay=10}] run function commands:ultimates/rally

scoreboard players set @a[scores={RallyDelay=10..}] RallyDelay 0

#Magic Barrier (Guardian Alt. Ultimate)

execute as @a[scores={Kit=3,Ultimate=13},tag=!notAlive,predicate=!commands:inventory/magic_barrier] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s BarrierTimer 1

give @a[scores={BarrierTimer=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Magic Barrier"}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Surround everyone on you team with magical barriers."}','{"text":"Anyone that attacks the barrier directly will become marked."}','{"text":"Marked players take much more damage when attacked."}']},CustomModelData:69,ultimateitem:1b,magicbarrier:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={BarrierTimer=3200..}] BarrierTimer 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/magic_barrier] run function commands:ultimates/magic_barrier_init

execute as @a[tag=protected] run function commands:ultimates/magic_barrier

execute as @a[advancements={commands:barrier_attack=true}] run tag @s add marked

execute as @a[advancements={commands:barrier_take=true}] run tag @s remove protected

advancement revoke @a[advancements={commands:barrier_attack=true}] only commands:barrier_attack
 
advancement revoke @a[advancements={commands:barrier_take=true}] only commands:barrier_take

#Marked Players

execute as @a[tag=marked] run function commands:ultimates/magic_mark

tag @a[scores={Marked=1..}] remove marked

scoreboard players set @a[scores={Marked=1..}] Marked 0

#Questionable Concoction (Healer Alt. Ultimate)

execute as @a[scores={Kit=4,Ultimate=14},tag=!notAlive,predicate=!commands:inventory/questionable_concoction] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s PotionTimer 1

give @a[team=Red,scores={PotionTimer=3000..}] bat_spawn_egg{CustomModelData:71,CanPlaceOn:["#commands:can_place_on"],ultimateitem:1b,concoction:1b,HideFlags:16,display:{Name:'{"text":"Questionable Concoction"}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Use to either heal your own king or damage the enemy king."}','{"text":"You must be within close range of your target to use it!"}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["concoctionred","concoction"]},Enchantments:[{}]} 1

give @a[team=Blue,scores={PotionTimer=3000..}] bat_spawn_egg{CustomModelData:71,CanPlaceOn:["#commands:can_place_on"],ultimateitem:1b,concoction:1b,HideFlags:16,display:{Name:'{"text":"Questionable Concoction"}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Use to either heal your own king or damage the enemy king."}','{"text":"You must be within close range of your target to use it!"}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["concoctionblue","concoction"]},Enchantments:[{}]} 1

scoreboard players set @a[scores={PotionTimer=3000..}] PotionTimer 0

execute as @e[type=bat,tag=concoction] at @s run function commands:ultimates/questionable_concoction

tp @e[type=bat,tag=concoction] ~ -100 ~
 
#Arrow of Justice (Archer Alt. Ultimate)

execute as @a[scores={Kit=5,Ultimate=15},tag=!notAlive,predicate=!commands:inventory/bow_of_justice] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s JusticeTimer 1
 
give @a[scores={JusticeTimer=3000..}] bow{CustomModelData:73,display:{Name:'{"text":"Bow of Justice","italic":false}',Lore:['{"text":"One shots nearly anything."}','{"text":"Can only be used once and can be deflected by shields."}','{"text":"Also cannot be used near a king."}','{"text":"If you kill a player with this, you will get the bow of justice back."}','{"text":"If successful, it must be used again within 15s or else it will disappear."}']},HideFlags:33,Damage:384,ultimateitem:1b,bowofjustice:1b,Enchantments:[{id:"minecraft:power",lvl:100s},{id:"minecraft:infinity",lvl:1s}]} 1

scoreboard players set @a[scores={JusticeTimer=3000..}] JusticeTimer 0

execute as @a[advancements={commands:bow_of_justice=true}] run function commands:ultimates/bow_of_justice

scoreboard players add @a[tag=justiceKill] jKillTimer 1

execute as @a[scores={jKillTimer=300..}] run function commands:ultimates/bow_of_justice_remove

tag @a[scores={died=1..}] remove justiceKill

#Overcharge (Wizard Alt. Ultimate)

execute as @a[scores={Kit=6,Ultimate=16},tag=!notAlive,predicate=!commands:inventory/overcharge] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s MinionTimer 1
 
give @a[scores={MinionTimer=3600..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Overcharge","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Supercharges your active minions."}','{"text":"All of them will receive strong buffs, regardless of where they are."}']},CustomModelData:75,ultimateitem:1b,overcharge:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={MinionTimer=3600..}] MinionTimer 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/overcharge] at @s run function commands:ultimates/overcharge

tag @e[type=zombie,tag=overcharge] add OC

execute as @e[type=zombie,tag=overcharge] at @s run data merge entity @s {CustomNameVisible:1b,Health:20f,IsBaby:1b,CustomName:'{"text":"Wizard Minion"}',HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:7s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:fire_aspect",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:99},{Name:generic.movement_speed,Base:0.35}]}
 
tag @e[type=zombie,tag=OC] remove overcharge

scoreboard players add @e[type=zombie,tag=OC] OCTimer 1

execute as @e[type=zombie,limit=1,scores={OCTimer=600..}] run function commands:ultimates/overcharge_end

#Flying Dutchman (Pirate Alt. Ultimate)

execute as @a[scores={Kit=7,Ultimate=17},tag=!notAlive,predicate=!commands:inventory/flying_dutchman] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s fDutchmanTimer 1

give @a[scores={fDutchmanTimer=3000..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Flying Dutchman","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons an invincible boat 10 blocks in the air, then teleports up to 2 teammates to it, including yourself."}','{"text":"The boat will float in the air and is controllable."}','{"text":"The boat will also drop high power fireballs every 0.75s."}','{"text":"The boat will disappear after 14 seconds."}']},CustomModelData:139,ultimateitem:1b,flyingdutchman:1b} 1

scoreboard players reset @a[scores={fDutchmanTimer=3000..}] fDutchmanTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/flying_dutchman,predicate=!commands:in_any_throne_room] at @s run function commands:ultimates/flying_dutchman_init

scoreboard players add @e[type=boat,tag=flyingdutchman] fDutchmanTimer 1

scoreboard players add @e[type=boat,tag=flyingdutchman] fDutchmanDur 1

execute as @a[predicate=commands:vehicle/flying_dutchman] run effect give @s resistance 1 2 true

execute as @e[type=boat,tag=flyingdutchman,scores={fDutchmanTimer=16..}] at @s run summon fireball ~ ~-1 ~ {ExplosionPower:4,Tags:["WF","fm"],power:[0.0,-5.0,0.0]}

scoreboard players reset @e[type=boat,tag=flyingdutchman,scores={fDutchmanTimer=16..}] fDutchmanTimer

execute as @e[type=boat,scores={fDutchmanDur=220}] at @s run tellraw @a[distance=..2,predicate=commands:vehicle/flying_dutchman] {"text":"Your boat is falling apart!","color":"green"}

execute as @e[type=boat,scores={fDutchmanDur=280..}] run function commands:ultimates/flying_dutchman_end

#Artificial Intelligence (Robot Alt. Ultimate)

execute as @a[scores={Kit=10,Ultimate=20},tag=!notAlive,predicate=!commands:inventory/artificial_intelligence] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s RobotTimer 1

give @a[team=Red,scores={RobotTimer=3600..}] bat_spawn_egg{CustomModelData:83,CanPlaceOn:["#commands:can_place_on"],ultimateitem:1b,ai:1b,HideFlags:16,display:{Name:'{"text":"Artificial Intelligence","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons a strong robot ally."}','{"text":"The robot chases after enemies and is tough to kill."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["AIred","AI"]},Enchantments:[{}]} 1

give @a[team=Blue,scores={RobotTimer=3600..}] bat_spawn_egg{CustomModelData:83,CanPlaceOn:["#commands:can_place_on"],ultimateitem:1b,ai:1b,HideFlags:16,display:{Name:'{"text":"Artificial Intelligence","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons a strong robot ally."}','{"text":"The robot chases after enemies and is tough to kill."}']},EntityTag:{Silent:1b,Invulnerable:1b,Tags:["AIblue","AI"]},Enchantments:[{}]} 1

scoreboard players set @a[scores={RobotTimer=3600..}] RobotTimer 0

execute as @e[tag=AI,type=bat] run function commands:ultimates/artificial_intelligence

tp @e[type=bat,tag=AI] ~ -100 ~

scoreboard players add @e[type=zombie,tag=AI] timeLimit 1

tp @e[type=zombie,tag=AI,scores={timeLimit=900..}] ~ -100 ~

execute if entity @e[type=zombie,team=Red,tag=AI,scores={timeLimit=900}] run tellraw @a {"text":"The Artificial Intelligence faded away...","color":"red"}

execute if entity @e[type=zombie,team=Blue,tag=AI,scores={timeLimit=900}] run tellraw @a {"text":"The Artificial Intelligence faded away...","color":"blue"}

#Regenerative Staff

scoreboard players add @a[scores={Kit=4}] RegenTimer 1

tag @a[scores={usedCOAS=1..,RegenTimer=120..},predicate=commands:holding/regenerative_staff] add regenstaff

execute as @a[tag=regenstaff] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/regen_staff_start_ray

execute as @a[scores={RegenTimer=120},predicate=commands:inventory/regen_staff] run function commands:replace/regen_staff_ready

#Give Weapons to players that dropped their weapon

execute as @a[scores={Kit=9},predicate=!commands:inventory/poseidon_trident,predicate=commands:in_any_battlefield] run function commands:replace/poseidon_trident_replace

execute as @a[scores={Kit=10},predicate=!commands:inventory/gunblade,predicate=commands:in_any_battlefield] run function commands:other/gunblade_reload

scoreboard players add @a[tag=reloading] reload 1

execute as @a[scores={reload=50..},tag=!upgraded] run item replace entity @s hotbar.8 with gunpowder{CustomModelData:14,display:{Name:'{"text":"Gunblade Ammo","color":"gray","italic":false}',Lore:['{"text":"Ammo for the Gunblade."}']},gunbladeammo:1b,Enchantments:[{}]} 15

execute as @a[scores={reload=50..},tag=upgraded] run item replace entity @s hotbar.8 with gunpowder{CustomModelData:14,display:{Name:'{"text":"Gunblade Ammo","color":"gray","italic":false}',Lore:['{"text":"Ammo for the Gunblade."}']},gunbladeammo:1b,Enchantments:[{}]} 20

execute as @a[scores={reload=50..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

tag @a[scores={reload=50..}] remove reloading

scoreboard players reset @a[scores={reload=50..}] reload

#Display deaths and Money

execute if score #deathcounter settings matches 0 run scoreboard players add #displayDeaths totalDeaths 1

execute if score #displayDeaths totalDeaths matches 600 run scoreboard objectives setdisplay sidebar totalDeaths

execute if score #displayDeaths totalDeaths matches 700 run scoreboard objectives setdisplay sidebar Money

execute if score #displayDeaths totalDeaths matches 700 run scoreboard players set #displayDeaths totalDeaths 0

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

advancement grant @a[scores={Money=5000..}] only commands:challenges/hoarder

advancement grant @a[scores={Health=40..}] only commands:challenges/unstoppable_tank

advancement grant @a[scores={craftShovel=1..}] only commands:hidden_advancements/craft_iron_shovel

advancement grant @a[scores={craftPickaxe=1..}] only commands:hidden_advancements/craft_golden_pickaxe

advancement grant @a[scores={craftQuartzBlock=1..}] only commands:hidden_advancements/craft_quartz_block

scoreboard players add @a[tag=slamming,nbt={OnGround:0b}] slamSuspend 1

advancement grant @a[scores={slamSuspend=300..}] only commands:hidden_advancements/seismic_suspension

advancement grant @a[scores={useAnvil=1..}] only commands:hidden_advancements/rename_item

advancement grant @a[scores={totalDeaths=25..}] only commands:challenges/death_wish

execute if score #red corruptBank matches 25.. run advancement grant @a[team=Red] only commands:challenges/corrupt_hoarder

execute if score #blue corruptBank matches 25.. run advancement grant @a[team=Blue] only commands:challenges/corrupt_hoarder

advancement grant @a[scores={useJukebox=1..}] only commands:hidden_advancements/record_label

advancement grant @a[scores={Ninjakill=1..,ePearlTimer=..40,Kit=2}] only commands:character_challenges/translocator

advancement grant @a[scores={ultsEaten=2..,Kit=3}] only commands:character_challenges/buffet

execute if score #redHS healstreak matches 20.. run advancement grant @a[scores={Kit=4},team=Red] only commands:character_challenges/angelic_presence

execute if score #blueHS healstreak matches 20.. run advancement grant @a[scores={Kit=4},team=Blue] only commands:character_challenges/angelic_presence

advancement grant @a[scores={boatDistance=25000..,Kit=7}] only commands:character_challenges/pirates_journey

advancement grant @a[scores={Health=20..}] only commands:full_hp

advancement revoke @a[scores={Health=..19}] only commands:full_hp

advancement grant @a[advancements={commands:warrior_challenge_damage=true,commands:warrior_challenge_kill=true},scores={Kit=1}] only commands:character_challenges/pure_destruction 

advancement grant @a[scores={Kit=9,scourgeKills=3..}] only commands:character_challenges/wrath_of_the_gods

advancement grant @a[scores={eBulletHit=2..,Kit=10}] only commands:character_challenges/explosive_combo

execute if entity @e[type=area_effect_cloud,tag=redmushroom,scores={mushroomRadius=15..}] run advancement grant @a[scores={Kit=8},team=Red] only commands:character_challenges/fungus_amongus

execute if entity @e[type=area_effect_cloud,tag=bluemushroom,scores={mushroomRadius=15..}] run advancement grant @a[scores={Kit=8},team=Blue] only commands:character_challenges/fungus_amongus

#Remove extra things

execute as @a[scores={Kit=9}] store result score @s multiItems run clear @s snowball{lightningspell:1b} 0

execute as @a[scores={Kit=3}] store result score @s multiItems run clear @s skeleton_spawn_egg{turret:1b} 0

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

execute as @a[predicate=commands:in_any_battlefield] run scoreboard players add #playersalive multiItems 1

execute if score #playersalive multiItems matches 1 run advancement grant @p[predicate=commands:in_any_battlefield] only commands:hidden_advancements/last_man_standing

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

execute as @a[predicate=commands:skybox] run advancement grant @s only commands:hidden_advancements/hit_skybox

execute as @a[predicate=commands:skybox] at @s run teleport @s ~ 122 ~

execute as @e[type=ender_pearl,predicate=commands:skybox] at @s run teleport @s ~ 122 ~

#Fish Cannon

scoreboard players remove @a[scores={fishCannonTimer=1..},predicate=commands:inventory/fish_cannon] fishCannonTimer 1

execute as @a[scores={usedCOAS=1..,fishCannonTimer=..0},predicate=commands:holding/fish_cannon_red] at @s run tag @s add fishCannonRed

execute as @a[scores={usedCOAS=1..,fishCannonTimer=..0},predicate=commands:holding/fish_cannon_blue] at @s run tag @s add fishCannonBlue

execute as @a[tag=fishCannonRed] at @s run function commands:other/fish_cannon_red

execute as @a[tag=fishCannonBlue] at @s run function commands:other/fish_cannon_blue

tag @a[tag=fishCannonRed] remove fishCannonRed

tag @a[tag=fishCannonBlue] remove fishCannonBlue

execute at @e[type=item,tag=fishCannon] run particle dust 0.000 1.000 0.765 1 ~ ~ ~ 0.25 0.25 0.25 1 5 normal

execute as @e[type=item,tag=fishCannon,nbt={OnGround:1b}] at @s run function commands:other/fish_cannon

execute as @e[type=item,tag=fishCannon] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=fishCannon,scores={nearbyBlocks=1..}] at @s run function commands:other/fish_cannon

execute as @a[team=Red,predicate=commands:inventory/fish_cannon_item_red] run function commands:other/fish_cannon_item_blue

execute as @a[team=Blue,predicate=commands:inventory/fish_cannon_item_blue] run function commands:other/fish_cannon_item_red

execute as @e[type=item,nbt={Item:{tag:{fishcannonitemred:1b}}}] at @s run data modify entity @s Owner set from entity @p[team=Blue] UUID

execute as @e[type=item,nbt={Item:{tag:{fishcannonitemblue:1b}}}] at @s run data modify entity @s Owner set from entity @p[team=Red] UUID

scoreboard players add @e[type=item,nbt={Item:{tag:{fishcannonitemred:1b}}}] fishCannonTimer 1

scoreboard players add @e[type=item,nbt={Item:{tag:{fishcannonitemblue:1b}}}] fishCannonTimer 1

kill @e[type=item,scores={fishCannonTimer=180..}]

scoreboard players set @a[scores={died=1..}] fishCannonTimer 0

#Squidzooka

scoreboard players remove @a[scores={squidzookaTimer=1..},predicate=commands:inventory/squidzooka] squidzookaTimer 1

execute as @a[scores={usedCOAS=1..,squidzookaTimer=..0},predicate=commands:holding/squidzooka] run tag @s add squidzooking

execute as @a[tag=squidzooking] at @s run function commands:other/squidzooka

scoreboard players set @a[scores={died=1..}] squidzookaTimer 0

execute as @e[type=item,tag=squidzooka,nbt={OnGround:1b}] at @s run function commands:other/squidzooka_explosion

execute as @e[type=item,tag=squidzooka] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on_without_grass force

execute as @e[type=item,tag=squidzooka] at @s if score @s nearbyBlocks matches 1.. run function commands:other/squidzooka_explosion

tag @a[tag=squidzooking] remove squidzooking

#Poseidon Voice Line CD

scoreboard players add #poseidonvoicered voicelineCD 1

scoreboard players add #poseidonvoiceblue voicelineCD 1

#Poseidon Passive (Lightning Spells)

scoreboard players remove @a[scores={Kit=9,multiItems=..4},predicate=commands:in_any_battlefield,tag=!notAlive,tag=!upgraded] poseidonPassive 1

scoreboard players remove @a[scores={Kit=9,multiItems=..7},predicate=commands:in_any_battlefield,tag=!notAlive,tag=upgraded] poseidonPassive 1

give @a[team=Red,scores={poseidonPassive=..0}] minecraft:snowball{display:{Name:'{"text":"Lightning Spell","color":"yellow","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"Strikes lightning onto nearby enemies."}','{"text":"Has a radius of 4 blocks."}']},CustomModelData:48,lightningspellred:1b,lightningspell:1b} 1

give @a[team=Blue,scores={poseidonPassive=..0}] minecraft:snowball{display:{Name:'{"text":"Lightning Spell","color":"yellow","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"Strikes lightning onto nearby enemies."}','{"text":"Has a radius of 4 blocks."}']},CustomModelData:48,lightningspellblue:1b,lightningspell:1b} 1

scoreboard players set @a[tag=!upgraded,scores={poseidonPassive=..0}] poseidonPassive 200

scoreboard players set @a[tag=upgraded,scores={poseidonPassive=..0}] poseidonPassive 180

execute as @e[type=snowball,tag=!lightningspellred,nbt={Item:{tag:{lightningspellred:1b}}}] at @s run function commands:ball/lightning_spell_found_red

execute as @e[type=area_effect_cloud,tag=lightningspellred] unless predicate commands:is_riding_lightning_spell_red at @s run function commands:ball/lightning_spell_landed_red

execute as @e[type=snowball,tag=!lightningspellblue,nbt={Item:{tag:{lightningspellblue:1b}}}] at @s run function commands:ball/lightning_spell_found_blue

execute as @e[type=area_effect_cloud,tag=lightningspellblue] unless predicate commands:is_riding_lightning_spell_blue at @s run function commands:ball/lightning_spell_landed_blue

#Poseidon Cooldown Displays

execute as @a[scores={Kit=9}] run scoreboard players operation @s lightningStore = @s poseidonPassive

execute as @a[scores={Kit=9}] store result score @s lightningDis run scoreboard players operation @s lightningStore /= #ticks constant

execute as @a[scores={Kit=9}] run scoreboard players operation @s fishCannonStore = @s fishCannonTimer

execute as @a[scores={Kit=9}] store result score @s fishCannonDis run scoreboard players operation @s fishCannonStore /= #ticks constant

execute as @a[scores={Kit=9}] run scoreboard players operation @s squidzookaStore = @s squidzookaTimer

execute as @a[scores={Kit=9}] store result score @s squidzookaDis run scoreboard players operation @s squidzookaStore /= #ticks constant

title @a[scores={Kit=9},predicate=!commands:inventory/fish_cannon,predicate=!commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"}]

title @a[scores={Kit=9},predicate=commands:inventory/fish_cannon,predicate=!commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"},{"text":"Fish Cannon: ","color":"green"},{"score":{"name":"*","objective":"fishCannonDis"},"color":"aqua"}]

title @a[scores={Kit=9},predicate=!commands:inventory/fish_cannon,predicate=commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"},{"text":"Squidzooka: ","color":"green"},{"score":{"name":"*","objective":"squidzookaDis"},"color":"aqua"}]

title @a[scores={Kit=9},predicate=commands:inventory/fish_cannon,predicate=commands:inventory/squidzooka] actionbar [{"text":"Lightning Spell: ","color":"green"},{"score":{"name":"*","objective":"lightningDis"},"color":"aqua"},{"text":"Fish Cannon: ","color":"green"},{"score":{"name":"*","objective":"fishCannonDis"},"color":"aqua"},{"text":"Squidzooka: ","color":"green"},{"score":{"name":"*","objective":"squidzookaDis"},"color":"aqua"}]

#Scourge of the Seas (Poseidon Ultimate)

execute as @a[scores={Ultimate=9},tag=!notAlive,predicate=!commands:inventory/scourge_of_the_seas] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s scourgeTimer 1

give @a[scores={scourgeTimer=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Scourge of the Seas","color":"dark_aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Call forth a rainstorm while boosting your speed and resistance."}','{"text":"You will receive a trident with riptide and higher damage."}','{"text":"Lasts 15 seconds."}']},CustomModelData:80,ultimateitem:1b,scourge:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={scourgeTimer=3200..}] scourgeTimer 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/scourge_of_the_seas] run function commands:ultimates/scourge_of_the_seas

scoreboard players add @a[tag=scourgeActive] scourgeDuration 1

execute if entity @a[scores={scourgeDuration=300..}] run weather clear 1000000

clear @a[scores={scourgeDuration=300..}] trident{mythtrident:1b}

tag @a[scores={scourgeDuration=300..}] remove scourgeActive

scoreboard players reset @a[scores={scourgeDuration=300..}] scourgeKills

scoreboard players reset @a[scores={scourgeDuration=300..}] scourgeDuration

#Terror of the Seas (Poseidon Alt. Ultimate)

execute as @a[scores={Ultimate=19},tag=!notAlive,predicate=!commands:inventory/terror_of_the_seas] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s terrorTimer 1

give @a[team=Red,scores={terrorTimer=3200..}] minecraft:elder_guardian_spawn_egg{CustomModelData:81,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Terror of the Seas","color":"#0011FF","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons the terror of the seas."}','{"text":"This elder guardian has increased stats and gives mining fatigue"}','{"text":"to all enemies."}']},terroroftheseasred:1b,ultimateitem:1b,terroroftheseas:1b,EntityTag:{Team:"Red",Health:60f,Tags:["terrorRed","terror"],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.attack_damage,Base:25}]},Enchantments:[{}]} 1

give @a[team=Blue,scores={terrorTimer=3200..}] minecraft:elder_guardian_spawn_egg{CustomModelData:81,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Terror of the Seas","color":"#0011FF","italic":false}',Lore:['{"text":"Placeable","color":"yellow","italic":false}','{"text":" "}','{"text":"Summons the terror of the seas."}','{"text":"This elder guardian has increased stats and gives mining fatigue"}','{"text":"to all enemies."}']},terroroftheseasblue:1b,ultimateitem:1b,terroroftheseas:1b,EntityTag:{Team:"Blue",Health:60f,Tags:["terrorBlue","terror"],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.attack_damage,Base:25}]},Enchantments:[{}]} 1

scoreboard players set @a[scores={terrorTimer=3200..}] terrorTimer 0

execute as @e[type=elder_guardian,tag=terrorRed,tag=!stop] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=19}]"},{"text":" has awoken the Terror of the Seas!"}]

execute as @e[type=elder_guardian,tag=terrorBlue,tag=!stop] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=19}]"},{"text":" has awoken the Terror of the Seas!"}]

execute if entity @e[type=elder_guardian,tag=terrorRed,tag=!stop] run playsound royalsiege:ultimates.terror_of_the_seas_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @e[type=elder_guardian,tag=terrorRed,tag=!stop] run playsound royalsiege:ultimates.terror_of_the_seas_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @e[type=elder_guardian,tag=terrorBlue,tag=!stop] run playsound royalsiege:ultimates.terror_of_the_seas_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @e[type=elder_guardian,tag=terrorBlue,tag=!stop] run playsound royalsiege:ultimates.terror_of_the_seas_enemy master @a[team=Red] ~ ~ ~ 100 1

tag @e[type=elder_guardian,tag=terrorRed] add stop

tag @e[type=elder_guardian,tag=terrorBlue] add stop

execute if entity @e[type=elder_guardian,tag=terrorRed] run effect clear @a[team=Red] mining_fatigue

execute if entity @e[type=elder_guardian,tag=terrorBlue] run effect clear @a[team=Blue] mining_fatigue

execute if entity @e[type=elder_guardian,tag=terrorRed] as @a[team=Blue,predicate=commands:effects/terror_of_the_seas] run function commands:ultimates/terror_of_the_seas

execute if entity @e[type=elder_guardian,tag=terrorBlue] as @a[team=Red,predicate=commands:effects/terror_of_the_seas] run function commands:ultimates/terror_of_the_seas

scoreboard players add @e[type=elder_guardian,tag=terror] timeLimit 1

tp @e[type=elder_guardian,tag=terror,scores={timeLimit=900..}] ~ -100 ~

execute if entity @e[type=elder_guardian,team=Red,tag=terror,scores={timeLimit=900}] run tellraw @a {"text":"The Terror of the Seas faded away...","color":"red"}

execute if entity @e[type=elder_guardian,team=Blue,tag=terror,scores={timeLimit=900}] run tellraw @a {"text":"The Terror of the Seas faded away...","color":"blue"}

#Ent Passive

execute as @a[team=Red,scores={Kit=8,entPassive=1..}] at @s run effect give @a[team=Red,distance=..10] regeneration 2 1 true

execute as @a[team=Blue,scores={Kit=8,entPassive=1..}] at @s run effect give @a[team=Blue,distance=..10] regeneration 2 1 true

scoreboard players reset @a[scores={Kit=8,entPassive=1..}] entPassive

#Ultimate Charger

execute at @e[type=bat,tag=ultimatecharger] as @a[distance=..5,limit=1,scores={Ultimate=1..26}] run function commands:other/ultimate_charger

teleport @e[type=bat,tag=ultimatecharger] ~ -100 ~

#The Watcher

scoreboard players add @e[type=zombie,tag=watcherred] watcherTimer 1

scoreboard players add @e[type=zombie,tag=watcherblue] watcherTimer 1

execute at @e[type=zombie,scores={watcherTimer=1..}] run particle dust 1.000 0.090 1.000 1 ~ ~1 ~ 0 0 0 1 1 normal

execute as @e[type=bat,tag=watcher] run function commands:other/watcher

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=..10] add watchRed

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=..10] add watchBlue

execute if entity @a[tag=watchRed,tag=!watched] run tellraw @a[team=Red] [{"selector":"@a[tag=watchRed,tag=!watched] "},{"text":" has been spotted by a watcher!"}]

execute if entity @a[tag=watchBlue,tag=!watched] run tellraw @a[team=Blue] [{"selector":"@a[tag=watchBlue,tag=!watched] "},{"text":" has been spotted by a watcher!"}]

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=..10] add watched

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=..10] add watched

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=10.1..] remove watchRed

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=10.1..] remove watchBlue

execute at @e[type=zombie,tag=watcherred] run tag @a[team=Blue,distance=10.1..] remove watched

execute at @e[type=zombie,tag=watcherblue] run tag @a[team=Red,distance=10.1..] remove watched

teleport @e[type=zombie,scores={watcherTimer=1200..}] ~ -100 ~

#The attractor

execute as @e[type=bat,tag=attractor] at @s run function commands:other/attractor

scoreboard players add @e[type=zombie,tag=attractorred] attractorTimer 1

scoreboard players add @e[type=zombie,tag=attractorblue] attractorTimer 1

execute at @e[type=zombie,scores={attractorTimer=1..}] run particle dust 1.000 0.090 1.000 1 ~ ~2 ~ 0 0 0 1 1 normal

execute at @e[type=zombie,tag=attractorred] as @a[team=Blue,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[type=zombie,tag=attractorred,limit=1,sort=nearest,distance=..10]

execute at @e[type=zombie,tag=attractorblue] as @a[team=Red,distance=..10] at @s run teleport @s ~ ~ ~ facing entity @e[type=zombie,tag=attractorblue,limit=1,sort=nearest,distance=..10]

teleport @e[type=zombie,scores={attractorTimer=1200..}] ~ -100 ~

#Spectator boundaries

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[tag=spectator,predicate=!commands:in_forest_glen] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[tag=spectator,predicate=!commands:in_forest_glen] run teleport @s 8 69 -132

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[tag=spectator,predicate=!commands:in_winterland] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[tag=spectator,predicate=!commands:in_winterland] run teleport @s 57 72 -1031

execute if score #gamemode settings matches 1 as @a[tag=spectator,predicate=!commands:in_tdm_map] run tellraw @s {"text":"You moved out of bounds!","color":"red"}

execute if score #gamemode settings matches 1 as @a[tag=spectator,predicate=!commands:in_tdm_map] run teleport @s 1051 69 -61

gamemode spectator @a[tag=spectator]

#Frying Pan Fire Aspect Enchantment

execute as @a[scores={damage=1..,Kit=11}] run function commands:other/frying_pan_damage

execute as @a[scores={damagePan=300..,Kit=11},predicate=!commands:inventory/frying_pan_burning] run function commands:other/frying_pan_enchant

execute as @a[scores={damagePan=1..,Kit=11},predicate=commands:inventory/frying_pan_burning] run function commands:other/frying_pan_normal

#Mystery Basket

scoreboard players remove @a[scores={Kit=11,basketTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] basketTimer 1

tag @a[scores={basketTimer=..0,usedCOAS=1..},predicate=commands:holding/mystery_basket] add basket

execute as @a[tag=basket] at @s run function commands:other/mystery_basket

execute as @a[scores={Kit=11}] run scoreboard players operation @s basketStore = @s basketTimer

execute as @a[scores={Kit=11}] store result score @s basketDis run scoreboard players operation @s basketStore /= #ticks constant

title @a[scores={Kit=11}] actionbar [{"text":"Mystery Basket: ","color":"green"},{"score":{"name":"*","objective":"basketDis"},"color":"aqua"}]

#Sheep Trainee

execute at @e[type=sheep,tag=sheepred] run effect give @a[team=Red,distance=..9] resistance 1 0 true

execute at @e[type=sheep,tag=sheepblue] run effect give @a[team=Blue,distance=..9] resistance 1 0 true

#Split Pea Soup

effect give @a[advancements={commands:split_pea_soup=true}] slowness 3 0 true

advancement revoke @a only commands:split_pea_soup

#Chicken Noodle Soup

execute at @a[team=Red,advancements={commands:chicken_noodle_soup=true}] run effect give @a[team=Red,distance=..8] fire_resistance 3 0 true

execute at @a[team=Blue,advancements={commands:chicken_noodle_soup=true}] run effect give @a[team=Blue,distance=..8] fire_resistance 3 0 true

advancement revoke @a only commands:chicken_noodle_soup

#Pay Raise

scoreboard players add @a[predicate=commands:inventory/pay_raise] payRaiseTimer 1

execute as @a[scores={payRaiseTimer=300}] run function commands:replace/pay_raise_ready

tag @a[team=Red,scores={usedCOAS=1..,payRaiseTimer=300..},predicate=commands:holding/pay_raise_red] add payred

execute as @a[tag=payred] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/pay_raise_red_start_ray

tag @a[tag=payred] remove payred

tag @a[team=Blue,scores={usedCOAS=1..,payRaiseTimer=300..},predicate=commands:holding/pay_raise_blue] add payblue

execute as @a[tag=payblue] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/pay_raise_blue_start_ray

tag @a[tag=payblue] remove payblue

scoreboard players add @a[tag=needsmoney] ray.payRaise 1

execute as @a[scores={ray.payRaise=10..},tag=needsmoney] run function commands:raycasts/pay_raise_money

tag @a[scores={ray.payRaise=10..}] remove needsmoney

scoreboard players reset @a[scores={ray.payRaise=10..}] ray.payRaise

#Scrambled Eggs

scoreboard players add @a[predicate=commands:inventory/scrambled_eggs] scrambleTimer 1

execute as @a[scores={scrambleTimer=500}] run function commands:replace/scrambled_eggs_ready

tag @a[scores={usedCOAS=1..,scrambleTimer=500..},predicate=commands:holding/scrambled_eggs] add scramble

execute as @a[tag=scramble] at @s run function commands:other/scrambled_eggs

tag @a remove scramble

execute as @e[type=item,tag=eggred] at @s run tag @p[distance=..4,team=Blue] add scrambled

execute as @e[type=item,tag=eggblue] at @s run tag @p[distance=..4,team=Red] add scrambled

execute as @e[type=item,tag=eggred] at @s if entity @p[distance=..4,team=Blue] run kill @s

execute as @e[type=item,tag=eggblue] at @s if entity @p[distance=..4,team=Red] run kill @s

execute as @a[tag=scrambled] at @s run playsound minecraft:block.slime_block.step master @s ~ ~ ~

execute as @a[tag=scrambled] at @s run particle item egg ~ ~ ~ 1 1 1 1 20 normal

execute as @a[tag=scrambled] run function commands:scramble/randomize

execute at @e[type=item,tag=egg,nbt={OnGround:1b}] run playsound minecraft:block.slime_block.step master @a ~ ~ ~

execute at @e[type=item,tag=egg,nbt={OnGround:1b}] run particle item egg ~ ~ ~ 1 1 1 1 20 normal

kill @e[type=item,tag=egg,nbt={OnGround:1b}]

tag @a remove scrambled

#Dinner's Ready! (Chef Ultimate)

execute as @a[scores={Ultimate=21},tag=!notAlive,predicate=!commands:inventory/dinners_ready] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s dinnerTimer 1

give @a[scores={dinnerTimer=3400..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dinner\'s Ready!","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":"Creates a circle of food around the chef."}','{"text":"Nearby teammates receive a wide variety of buffs around "}','{"text":"Serve up a buffet of food for your team."}']},CustomModelData:104,ultimateitem:1b,dinnersready:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={dinnerTimer=3400..}] dinnerTimer 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/dinners_ready] run function commands:ultimates/dinners_ready

execute at @a[tag=dinnerTargetRed] run particle angry_villager ~ ~2 ~ 0 0 0 1 1 normal

execute as @a[tag=dinnerTargetRed] run function commands:ultimates/dinner_effects

execute as @a[tag=dinnerTargetBlue] run function commands:ultimates/dinner_effects

scoreboard players add @a[tag=dinnerTargetRed] dinnerEnd 1

scoreboard players add @a[tag=dinnerTargetBlue] dinnerEnd 1

execute as @a[scores={dinnerEnd=300..}] run function commands:ultimates/dinners_end

#Closing Time (Chef Alt. Ultimate Classic Mode)

execute if score #gamemode settings matches 0 as @a[scores={Ultimate=22},tag=!notAlive,predicate=!commands:inventory/closing_time] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s closingTimer 1

give @a[scores={closingTimer=3400..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Closing Time","color":"#4F3557","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":"Closes off the throne room of the castle you are closest to."}']},CustomModelData:105,ultimateitem:1b,closingtime:1b,Enchantments:[{}]} 1

scoreboard players set @a[scores={closingTimer=3400..}] closingTimer 0

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/closing_time] run function commands:ultimates/closing_time

scoreboard players add @a[tag=closingRed] closingEnd 1

scoreboard players add @a[tag=closingBlue] closingEnd 1

execute as @a[scores={closingEnd=200..}] run function commands:ultimates/closing_end

#Explosive Charge (Warrior Ability)

scoreboard players remove @a[scores={exCharge=1..},predicate=commands:in_any_battlefield,tag=!notAlive] exCharge 1

execute as @a[scores={exCharge=0,jump=1..,Kit=1},advancements={commands:explosive_charge={hit_player=true}}] at @s run function commands:other/explosive_charge

advancement revoke @a only commands:explosive_charge

scoreboard players add @a[tag=exCharge] exChargeDelay 1
 
execute as @a[scores={exChargeDelay=2..}] at @s run teleport @s @s

tag @a[scores={exChargeDelay=2..}] remove exCharge

scoreboard players reset @a[scores={exChargeDelay=2..}] exChargeDelay

scoreboard players set @a[nbt={OnGround:1b}] jump 0

#Toxin Ball

execute as @e[type=snowball,tag=!toxinballred,nbt={Item:{tag:{toxinballred:1b}}}] at @s run function commands:ball/toxin_ball_found_red

execute as @e[type=area_effect_cloud,tag=toxinitemred] unless predicate commands:is_riding_toxin_ball_red at @s run function commands:ball/toxin_ball_landed_red

execute as @e[type=snowball,tag=!toxinballblue,nbt={Item:{tag:{toxinballblue:1b}}}] at @s run function commands:ball/toxin_ball_found_blue

execute as @e[type=area_effect_cloud,tag=toxinitemblue] unless predicate commands:is_riding_toxin_ball_blue at @s run function commands:ball/toxin_ball_landed_blue

#Generic Snowball Attack things

execute as @e[type=snowball,tag=snowball] run function commands:ball/visfix

scoreboard players operation #global visfix *= #-1 visfix

#King Activate

scoreboard players remove @e[type=wither_skeleton,scores={kingActive=1..}] kingActive 1

tag @e[type=wither_skeleton,scores={kingActive=0}] add inactivated

execute as @e[type=wither_skeleton,tag=inactivated] run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:-1}]}

execute at @e[type=wither_skeleton,team=Red,tag=inactivated] run summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["wanderingKingRed","wanderingKing"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.8}],WanderTarget:{X:9,Y:59,Z:-216},Offers:{}}

execute at @e[type=wither_skeleton,team=Blue,tag=inactivated] run summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["wanderingKingBlue","wanderingKing"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.8}],WanderTarget:{X:9,Y:59,Z:-48},Offers:{}}

scoreboard players set @e[type=wither_skeleton,tag=inactivated] kingActive -1

tag @e[type=wither_skeleton] remove inactivated

teleport @e[type=wither_skeleton,team=Red,tag=King,scores={kingActive=-1}] @e[type=wandering_trader,tag=wanderingKingRed,limit=1]

teleport @e[type=wither_skeleton,team=Blue,tag=King,scores={kingActive=-1}] @e[type=wandering_trader,tag=wanderingKingBlue,limit=1]

execute positioned 9 59 -216 if entity @e[type=wandering_trader,tag=wanderingKingRed,distance=..2] run scoreboard players set @e[type=wither_skeleton,team=Red,tag=King] kingActive -2 

execute positioned 9 59 -48 if entity @e[type=wandering_trader,tag=wanderingKingBlue,distance=..2] run scoreboard players set @e[type=wither_skeleton,team=Blue,tag=King] kingActive -2

execute positioned 9 59 -216 if entity @e[type=wandering_trader,tag=wanderingKingRed,distance=..2] run teleport @e[type=wither_skeleton,team=Red,tag=King] 9 59 -216

execute positioned 9 59 -48 if entity @e[type=wandering_trader,tag=wanderingKingBlue,distance=..2] run teleport @e[type=wither_skeleton,team=Blue,tag=King] 9 59 -48

execute if score @e[type=wither_skeleton,team=Red,tag=King,limit=1] kingActive matches -2 run teleport @e[type=wandering_trader,tag=wanderingKingRed] ~ -100 ~

execute if score @e[type=wither_skeleton,team=Blue,tag=King,limit=1] kingActive matches -2 run teleport @e[type=wandering_trader,tag=wanderingKingBlue] ~ -100 ~

execute if score @e[type=wither_skeleton,team=Red,tag=King,limit=1] kingActive matches 1.. run teleport @e[type=wandering_trader,tag=wanderingKingRed] ~ -100 ~

execute if score @e[type=wither_skeleton,team=Blue,tag=King,limit=1] kingActive matches 1.. run teleport @e[type=wandering_trader,tag=wanderingKingBlue] ~ -100 ~

execute as @e[type=wandering_trader,tag=wanderingKing] run data remove entity @s HandItems[0]

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @e[type=wandering_trader,tag=wanderingKingRed] run data merge entity @s {WanderTarget:{X:9,Y:59,Z:-216}}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @e[type=wandering_trader,tag=wanderingKingBlue] run data merge entity @s {WanderTarget:{X:9,Y:59,Z:-48}}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @e[type=wandering_trader,tag=wanderingKingRed] run data merge entity @s {WanderTarget:{X:156,Y:59,Z:-1017}}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @e[type=wandering_trader,tag=wanderingKingBlue] run data merge entity @s {WanderTarget:{X:45,Y:59,Z:-1128}}

scoreboard players add @e[type=wandering_trader,tag=wanderingKing] kingActive 1

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @e[type=wandering_trader,tag=wanderingKingRed,scores={kingActive=200}] run teleport @s 9 59 -215

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @e[type=wandering_trader,tag=wanderingKingBlue,scores={kingActive=200}] run teleport @s 9 59 -48

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @e[type=wandering_trader,tag=wanderingKingRed,scores={kingActive=200}] run teleport @s 156 59 -1017

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @e[type=wandering_trader,tag=wanderingKingBlue,scores={kingActive=200}] run teleport @s 45 59 -1128

#Dragon Rush

scoreboard players remove @a[scores={dragonRushTimer=1..},predicate=commands:inventory/dragon_rush,predicate=commands:in_any_battlefield,tag=!notAlive] dragonRushTimer 1

execute as @a[scores={dragonRushTimer=2}] run function commands:replace/dragon_rush_ready

tag @a[scores={Kit=12,usedCOAS=1..,dragonRushTimer=..0},predicate=commands:holding/dragon_rush] add dRush

tag @a[scores={Kit=12,usedCOAS=1..,dragonRushTimer=..0},predicate=commands:holding/dragon_rush] add dRushTemp

tag @a[tag=rooted] remove dRush

execute at @a[tag=dRush] run playsound entity.ender_dragon.flap master @a[distance=..10] ~ ~ ~ 1 1

execute as @a[tag=dRush] at @s anchored eyes positioned ^ ^ ^ anchored feet run function commands:raycasts/dragon_rush_start_ray

tag @a[tag=dRush] remove dRush

scoreboard players reset @a[scores={died=1..}] dragonRushTimer

#Dragon Rage

scoreboard players remove @a[scores={Kit=12,dragonRageTimer=1..},predicate=commands:inventory/dragon_rage,predicate=commands:in_any_battlefield,tag=!notAlive] dragonRageTimer 1

execute as @a[scores={dragonRageTimer=2}] run function commands:replace/dragon_rage_ready

tag @a[scores={Kit=12,usedCOAS=1..,dragonRageTimer=..0},predicate=commands:holding/dragon_rage] add dRage

execute as @a[tag=dRage] at @s run function commands:other/dragon_rage

scoreboard players set @a[scores={died=1..}] dragonRageTimer 0

tag @a[tag=dRage] remove dRage

execute as @e[tag=stop,type=dragon_fireball] store success entity @s Air short 1 if data entity @s {Air:0s}

tag @e[type=area_effect_cloud,nbt={Particle:"minecraft:dragon_breath"},tag=!stop] add dRageCloud

data merge entity @e[type=area_effect_cloud,tag=dRageCloud,tag=!stop,limit=1] {ReapplicationDelay:25,RadiusPerTick:-0.005f,RadiusOnUse:-0.005f,Duration:160}

execute at @e[type=area_effect_cloud,tag=dRageCloud,tag=!stop] run summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,Tags:["dRageCreeper"]}

tag @e[type=area_effect_cloud,tag=dRageCloud] add stop

#Dragon Cooldown Display

execute as @a[scores={Kit=12}] run scoreboard players operation @s dRageStore = @s dragonRageTimer

execute as @a[scores={Kit=12}] store result score @s dRageDis run scoreboard players operation @s dRageStore /= #ticks constant

execute as @a[scores={Kit=12}] run scoreboard players operation @s dRushStore = @s dragonRushTimer

execute as @a[scores={Kit=12}] store result score @s dRushDis run scoreboard players operation @s dRushStore /= #ticks constant

execute as @a[predicate=commands:inventory/crystal_cannon] run scoreboard players operation @s cCannonStore = @s cCannonTimer

execute as @a[predicate=commands:inventory/crystal_cannon] store result score @s cCannonDis run scoreboard players operation @s cCannonStore /= #ticks constant

title @a[scores={Kit=12},predicate=!commands:inventory/crystal_cannon] actionbar [{"text":"Dragon Rage: ","color":"green"},{"score":{"name":"*","objective":"dRageDis"},"color":"aqua"},{"text":"   Dragon Rush: ","color":"green"},{"score":{"name":"*","objective":"dRushDis"},"color":"aqua"}]

title @a[scores={Kit=12},predicate=commands:inventory/crystal_cannon] actionbar [{"text":"Dragon Rage: ","color":"green"},{"score":{"name":"*","objective":"dRageDis"},"color":"aqua"},{"text":"   Dragon Rush: ","color":"green"},{"score":{"name":"*","objective":"dRushDis"},"color":"aqua"},{"text":"   Crystal Cannon: ","color":"green"},{"score":{"name":"*","objective":"cCannonDis"},"color":"aqua"}]

#Outrage

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/outrage] run function commands:other/outrage_init

scoreboard players add @a[tag=outrage] outrageTimer 1

execute as @a[scores={outrageTimer=161..}] run function commands:other/outrage_effects

#Hatchlings

execute as @e[type=bat,tag=hatchlings] at @s run function commands:other/hatchlings

#Corruption

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/corruption] at @s run function commands:other/corruption

scoreboard players add @a[tag=corrupted] corruptTimer 1

execute as @a[tag=corrupted,scores={corruptDamage=0..}] run function commands:other/corrupt_side_effects

tag @a[scores={corruptTimer=200..}] remove corrupted

scoreboard players reset @a corruptDamage

scoreboard players reset @a[scores={corruptTimer=200..}] corruptTimer

#Necromantic Axe

execute as @a[team=Red,advancements={commands:necromantic_axe_death=true}] at @s run summon minecraft:zombie ~ ~ ~ {Silent:1b,Team:"Blue",Health:20f,IsBaby:1b,Tags:["hatchlingblue","hatchling"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:dragon_head",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:99},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:8}]}

execute as @a[team=Blue,advancements={commands:necromantic_axe_death=true}] at @s run summon minecraft:zombie ~ ~ ~ {Silent:1b,Team:"Red",Health:20f,IsBaby:1b,Tags:["hatchlingred","hatchling"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1184511}}},{id:"minecraft:dragon_head",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:99},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:8}]}

advancement revoke @a only commands:necromantic_axe_death

#Crystal Cannon

scoreboard players remove @a[predicate=commands:inventory/crystal_cannon,scores={cCannonTimer=1..}] cCannonTimer 1

tag @a[scores={cCannonTimer=..0,usedCOAS=1..},predicate=commands:holding/crystal_cannon] add cCannon

execute as @a[tag=cCannon] at @s run function commands:other/crystal_cannon

tag @a remove cCannon

execute as @e[type=item,tag=cCannonItem] at @s store result score @s nearbyBlocks run clone ~-0.3 ~-0.3 ~-0.3 ~0.3 ~0.3 ~0.3 ~-0.3 ~-0.3 ~-0.3 filtered #commands:can_place_on force

execute as @e[type=item,tag=cCannonItem] if score @s nearbyBlocks matches 1.. at @s run function commands:other/crystal_cannon_prime

scoreboard players reset @e[type=item,tag=cCannonItem] nearbyBlocks

scoreboard players add @e[type=armor_stand,tag=cCannonMarker] cCannonTimer 1

execute as @e[type=armor_stand,tag=cCannonMarker,scores={cCannonTimer=20}] run data merge entity @s {CustomName:'{"text":"2","color":"red","italic":false}'}

execute as @e[type=armor_stand,tag=cCannonMarker,scores={cCannonTimer=40}] run data merge entity @s {CustomName:'{"text":"1","color":"red","italic":false}'}

execute as @e[type=armor_stand,tag=cCannonMarker,scores={cCannonTimer=60..}] at @s run function commands:other/crystal_cannon_explode

#Meteor Shower (Dragon Ultimate)

execute as @a[scores={Ultimate=23},tag=!notAlive,predicate=!commands:inventory/meteor_shower] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s mShowerTimer 1

give @a[scores={mShowerTimer=3600..}] minecraft:bat_spawn_egg{HideFlags:16,CanPlaceOn:["#commands:can_place_on"],display:{Name:'{"text":"Meteor Shower","color":"#FF0ABE","italic":false}',Lore:['{"text":"Drops meteors from the sky."}','{"text":"Meteors will drop in a 10 block radius centered on where you used the ultimate."}','{"text":"Meteors can vary in power."}','{"text":"Lasts 10 seconds."}']},CustomModelData:116,ultimateitem:1b,meteorshower:1b,EntityTag:{Tags:["meteorshower"]}} 1

scoreboard players reset @a[scores={mShowerTimer=3600..}] mShowerTimer

execute as @e[tag=meteorshower,type=bat] at @s run function commands:ultimates/meteor_shower_init

scoreboard players add @e[type=area_effect_cloud,tag=mShowerPoint] mShowerTimer 1

scoreboard players add @e[type=area_effect_cloud,tag=mShowerAbove] mShowerTimer 1

execute at @e[type=area_effect_cloud,tag=mShowerPoint,scores={mShowerTimer=20..}] positioned ~ ~20 ~ run scoreboard players add @e[type=area_effect_cloud,tag=mShowerAbove,distance=..4] mShowerTimer 1

execute as @e[type=area_effect_cloud,tag=mShowerAbove,scores={mShowerTimer=10..}] at @s run function commands:ultimates/meteor_shower_drop

execute as @e[type=area_effect_cloud,tag=mShowerPoint,scores={mShowerTimer=200..}] at @s run function commands:ultimates/meteor_shower_end

#Evolution (Dragon Alt. Ultimate)

execute as @a[scores={Ultimate=24},tag=!notAlive,predicate=!commands:inventory/evolution] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s evolutionTimer 1

give @a[scores={evolutionTimer=3600..}] minecraft:carrot_on_a_stick{CanPlaceOn:["minecraft:can_place_on"],display:{Name:'{"text":"Evolution","color":"#A100FF","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":"Take to the skies, receiving a pair of wings and fireworks."}','{"text":"Lasts 12 seconds."}']},HideFlags:16,CustomModelData:117,ultimateitem:1b,evolutionUlt:1b} 1

scoreboard players reset @a[scores={evolutionTimer=3600..}] evolutionTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/evolution] at @s run function commands:ultimates/evolution_init

scoreboard players add @a[tag=evolve] evolutionDur 1

tellraw @a[scores={evolutionDur=180}] {"text":"Evolution will end in 3 seconds!","color":"green"}

execute as @a[scores={evolutionDur=240..}] run function commands:ultimates/evolution_end

#Punch Bow Cooldown

execute as @a[scores={useBow=1..},predicate=commands:holding/punch_bow] run function commands:replace/punch_bow_replace

scoreboard players reset @a[scores={useBow=1..}] useBow

scoreboard players add @a[predicate=commands:inventory/punch_bow] pBowTimer 1

execute as @a[scores={pBowTimer=100}] run function commands:replace/punch_bow_ready

#Blunderbuss

scoreboard players add @a[predicate=commands:inventory/blunderbuss] blunderTimer 1

execute as @a[scores={usedCOAS=1..,blunderTimer=60..},predicate=commands:holding/blunderbuss,nbt={Inventory:[{id:"minecraft:arrow"}]}] run tag @s add blunderShoot

execute as @a[tag=blunderShoot] at @s run function commands:other/blunderbuss

execute as @a[scores={blunderTimer=60}] run function commands:replace/blunderbuss_ready

#Jump Boost Fix

execute as @a[scores={JBFix=0..},predicate=commands:jump_boost_fix] at @s run tag @s add JBFix

scoreboard players add @a[tag=JBFix] JBTime 1

execute as @a[scores={JBTime=1..}] at @s run tp @s @s

tag @a[tag=JBFix,scores={JBTime=3..}] remove JBFix

scoreboard players reset @a[scores={JBTime=3..}] JBFix

scoreboard players reset @a[scores={JBTime=3..}] JBTime

#Angel Healstreak Passive

execute if score #redHS healstreak matches 6.. run tag @a[team=Red,tag=!healstreak,limit=1,scores={Kit=4}] add HSinit

execute if score #blueHS healstreak matches 6.. run tag @a[team=Blue,tag=!healstreak,limit=1,scores={Kit=4}] add HSinit

execute as @a[team=Red,tag=HSinit,tag=!healstreak] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Team:"Red",Tags:["angelpassive","HSRed"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:119,angelpassive:1b}}}

execute as @a[team=Blue,tag=HSinit,tag=!healstreak] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Team:"Blue",Tags:["angelpassive","HSBlue"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:119,angelpassive:1b}}}

tag @a[tag=HSinit] add healstreak

execute as @a[team=Red,tag=healstreak] at @s anchored eyes positioned ^ ^ ^ as @e[type=item,tag=HSRed] rotated as @s run teleport @s ^ ^ ^0.5 ~5 0

execute as @a[team=Blue,tag=healstreak] at @s anchored eyes positioned ^ ^ ^ as @e[type=item,tag=HSBlue] rotated as @s run teleport @s ^ ^ ^0.5 ~5 0

scoreboard players add @e[tag=angelpassive] HSTimer 1

execute as @e[type=item,tag=angelpassive,scores={HSTimer=160..}] at @s if entity @p[tag=!upgraded,distance=..2,scores={Kit=4}] run function commands:other/angel_passive

execute as @e[type=item,tag=angelpassive,scores={HSTimer=120..}] at @s if entity @p[tag=upgraded,distance=..2,scores={Kit=4}] run function commands:other/angel_passive

scoreboard players reset @a[tag=!healstreak] HSdamage

execute as @a[scores={HSdamage=200..}] run function commands:other/angel_passive_end

execute if entity @a[team=Red,scores={Kit=4,died=1..}] run scoreboard players set #redHS healstreak 0

execute if entity @a[team=Blue,scores={Kit=4,died=1..}] run scoreboard players set #blueHS healstreak 0

#Guardian Counter

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/counter] run function commands:other/counter

scoreboard players reset @a[tag=!countering] counterDmg

scoreboard players add @a[tag=countering] counterTimer 1

execute as @a[scores={counterTimer=80..}] run function commands:other/counter_effects

#Get Absorption amount

execute as @a[predicate=commands:effects/absorption] store result score @s absHearts run data get entity @s AbsorptionAmount
 
#Absorption Shield

execute as @a[predicate=commands:inventory/absorption_shield] run title @s actionbar [{"text":"Defensive Spell: ","color":"green"},{"score":{"name":"*","objective":"dSpellDis"},"color":"aqua"},{"text":"   Turret: ","color":"green"},{"score":{"name":"*","objective":"turretDis"},"color":"aqua"},{"text":"   Absorption Shield: ","color":"green"},{"score":{"name":"*","objective":"absShieldCount"},"color":"aqua"},{"text":"/80","color":"green"}]

execute as @a[scores={usedCOAS=1..,absShieldCount=1..,absShieldCD=40..},predicate=commands:holding/absorption_shield] run function commands:other/absorption_shield

execute as @a[predicate=commands:inventory/absorption_shield,scores={absShieldCD=40}] run function commands:replace/absorption_shield_ready

scoreboard players add @a[tag=!absShield,scores={Kit=3}] absShieldCD 1

execute as @a[tag=absShield,scores={absShieldCount=1..,absShieldCD=40..}] at @s run function commands:other/absorption_shield_effects

scoreboard players add @a[tag=!absShield,scores={absShieldCount=..79}] absShieldTimer 1

scoreboard players add @a[scores={absShieldTimer=4..}] absShieldCount 1

scoreboard players reset @a[scores={absShieldTimer=4..}] absShieldTimer

scoreboard players reset @a[scores={died=1..}] absShieldCD

tag @a[scores={died=1..}] remove absShield

#Colored beacon in middle

execute store result score #redking bossHP run bossbar get minecraft:redking value

execute store result score #blueking bossHP run bossbar get minecraft:blueking value

execute if score #redking bossHP < #blueking bossHP run setblock 9 51 -132 blue_stained_glass

execute if score #redking bossHP > #blueking bossHP run setblock 9 51 -132 red_stained_glass

execute if score #redking bossHP = #blueking bossHP run setblock 9 51 -132 white_stained_glass

#Castle Throne Room Warps (Forest Glen)

execute positioned 19 60 -65 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 18.4 60 -65

execute positioned 15 60 -65 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 14.4 60 -65

execute positioned -1 60 -65 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 0.6 60 -65

execute positioned 3 60 -65 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 4.6 60 -65

execute positioned 2 57 -65 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 1.6 60 -65

execute positioned 19 60 -199 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 18.4 60 -199

execute positioned 15 60 -199 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 14.4 60 -199

execute positioned -1 60 -199 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 0.6 60 -199

execute positioned 3 60 -199 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 4.6 60 -199

execute positioned 16 57 -199 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 17.4 60 -199

#Castle Throne Room Warps (Winterland)

execute positioned 52 57 -1111 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 54.4 60 -1111

execute positioned 56 60 -1111 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 54.4 60 -1111

execute positioned 51 60 -1111 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 49.4 60 -1111

execute positioned 35 60 -1111 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 36.6 60 -1111

execute positioned 39 60 -1111 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 40.6 60 -1111

execute positioned 139 60 -1027 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 139 60 -1025.4

execute positioned 139 60 -1023 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 139 60 -1021.4

execute positioned 139 60 -1006 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 139 60 -1007.6

execute positioned 139 60 -1011 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 139 60 -1012.6

execute positioned 139 57 -1010 as @a[distance=..1,tag=!noWarp,gamemode=!spectator] run teleport @s 139 60 -1007.6

#Castle Healing Stations

execute as @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},predicate=commands:in_red_healing_station] at @s run effect give @p[team=Red,distance=..4] regeneration 10 1 true

execute as @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},predicate=commands:in_blue_healing_station] at @s run effect give @p[team=Blue,distance=..4] regeneration 10 1 true

execute as @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},predicate=commands:in_red_healing_station] at @s run playsound minecraft:entity.player.levelup master @p[team=Red,distance=..4] ~ ~ ~ 1 2

execute as @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},predicate=commands:in_blue_healing_station] at @s run playsound minecraft:entity.player.levelup master @p[team=Blue,distance=..4] ~ ~ ~ 1 2

kill @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},predicate=commands:in_red_healing_station]

kill @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},predicate=commands:in_blue_healing_station]

#Royal Guards

execute unless entity @e[type=skeleton,tag=redroyalguard] if score #gamemode settings matches 0 run scoreboard players add #redroyalguard royalguardCD 1

execute unless entity @e[type=skeleton,tag=blueroyalguard] if score #gamemode settings matches 0 run scoreboard players add #blueroyalguard royalguardCD 1

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #redroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 12 57 -209 {PersistenceRequired:1b,Team:"Red",Health:65f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #redroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 6 57 -209 {PersistenceRequired:1b,Team:"Red",Health:65f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #blueroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 12 57 -55 {PersistenceRequired:1b,Team:"Blue",Health:65f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 if score #blueroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 6 57 -55 {PersistenceRequired:1b,Team:"Blue",Health:65f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #redroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 150 57 -1020 {PersistenceRequired:1b,Team:"Red",Health:65f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #redroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 150 57 -1014 {PersistenceRequired:1b,Team:"Red",Health:65f,Tags:["redroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #blueroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 42 57 -1122 {PersistenceRequired:1b,Team:"Blue",Health:65f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 if score #blueroyalguard royalguardCD matches 2400 run summon minecraft:skeleton 48 57 -1122 {PersistenceRequired:1b,Team:"Blue",Health:65f,Tags:["blueroyalguard","royalguard"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:4607},Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:65},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:-1.0},{Name:generic.attack_damage,Base:12}]}

execute if score #redroyalguard royalguardCD matches 2400.. run scoreboard players reset #redroyalguard royalguardCD

execute if score #blueroyalguard royalguardCD matches 2400.. run scoreboard players reset #blueroyalguard royalguardCD

execute as @e[type=skeleton,tag=redroyalguard,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:-1.0d}]}] if entity @a[team=Blue,predicate=commands:in_any_red_throne_room] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.25d}]}

execute as @e[type=skeleton,tag=redroyalguard,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.25d}]}] unless entity @a[team=Blue,predicate=commands:in_any_red_throne_room] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:-1.0d}]}

execute as @e[type=skeleton,tag=blueroyalguard,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:-1.0d}]}] if entity @a[team=Red,predicate=commands:in_any_blue_throne_room] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.25d}]}

execute as @e[type=skeleton,tag=blueroyalguard,nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.25d}]}] unless entity @a[team=Red,predicate=commands:in_any_blue_throne_room] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:-1.0d}]}

execute as @e[type=skeleton,tag=redroyalguard,predicate=!commands:in_any_red_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 0 run teleport @s ~ ~ ~-0.2

execute as @e[type=skeleton,tag=redroyalguard,predicate=!commands:in_any_red_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 1 run teleport @s ~0.2 ~ ~

execute as @e[type=skeleton,tag=blueroyalguard,predicate=!commands:in_any_blue_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 0 run teleport @s ~ ~ ~0.2

execute as @e[type=skeleton,tag=blueroyalguard,predicate=!commands:in_any_blue_throne_room] at @s if score #gamemode settings matches 0 if score #classicMap settings matches 1 run teleport @s ~ ~ ~-0.2

#Wizard minions die when wizard dies

execute if entity @a[team=Red,scores={Kit=6,died=1..}] run kill @e[type=zombie,team=Red,tag=WM]

execute if entity @a[team=Blue,scores={Kit=6,died=1..}] run kill @e[type=zombie,team=Blue,tag=WM]

#Castle Chain

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/castle_chain] run function commands:other/castle_chain

scoreboard players add @a[tag=castleChain] castleChain 1

execute as @a[scores={castleChain=600..}] run function commands:other/castle_chain_end

#Gold Magnet

execute as @a[predicate=commands:inventory/gold_magnet] at @s run teleport @e[type=item,nbt={Item:{tag:{moneyitem:1b}}},distance=..5] @s

#Killer King

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/killer_king] run function commands:other/killer_king

execute at @e[type=wither_skeleton,tag=King,tag=killerking] run particle minecraft:angry_villager ~ ~2 ~ 0 0.25 0 0 1

#Oven

execute as @e[type=bat,tag=oven] at @s run function commands:other/place_oven

scoreboard players add @e[type=zombified_piglin,tag=oven] ovenTimer 1

scoreboard players add @e[type=zombified_piglin,tag=oven] ovenDur 1

execute as @e[type=item_frame,tag=oven] at @s unless entity @e[type=zombified_piglin,limit=1,sort=nearest,distance=..1] run function commands:other/destroy_oven

execute as @e[type=zombified_piglin,tag=oven,scores={ovenTimer=30,ovenDur=1..}] at @s run data modify entity @e[type=item_frame,tag=oven,limit=1,sort=nearest] Item set value {id:"minecraft:stone_bricks",Count:1b,tag:{CustomModelData:134}}

execute as @e[type=zombified_piglin,tag=oven,tag=pizzatime,scores={ovenTimer=20..}] at @s run function commands:other/shoot_pizza

execute as @e[type=zombified_piglin,tag=oven,scores={ovenTimer=160..}] at @s run function commands:other/shoot_pizza

execute as @e[type=zombified_piglin,tag=oven,scores={ovenDur=1600..}] at @s run function commands:other/destroy_oven

#Pizza Time (Chef Alt. Ultimate TDM)

execute if score #gamemode settings matches 1 as @a[scores={Ultimate=22},tag=!notAlive,predicate=!commands:inventory/pizza_time] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s pizzaTimer 1

give @a[scores={pizzaTimer=3000..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Pizza Time","color":"#FF5E00","italic":false}',Lore:['{"text":"Overloads your active ovens."}','{"text":"Overloaded ovens shoot every second instead of every 8 seconds."}']},Unbreakable:1b,CustomModelData:136,pizzatime:1b,ultimateitem:1b,Enchantments:[{}]} 1

scoreboard players reset @a[scores={pizzaTimer=3000..}] pizzaTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/pizza_time] run function commands:ultimates/pizza_time

scoreboard players add @e[type=zombified_piglin,tag=pizzatime,tag=oven] pizzaTimer 1

execute as @e[type=zombified_piglin,tag=pizzatime,tag=oven,scores={pizzaTimer=200..},limit=1] run function commands:ultimates/pizza_time_end

#Spawntime 5s in TDM

execute if score #gamemode settings matches 1 run scoreboard players set @a[scores={died=1..}] Respawn 90

execute if score #gamemode settings matches 1 run scoreboard players set @a[team=Red,scores={died=1..}] RedKit 90

execute if score #gamemode settings matches 1 run scoreboard players set @a[team=Blue,scores={died=1..}] BlueKit 90

#TDM spreadplayer

execute as @a[predicate=commands:on_tdm_gates] at @s run function commands:starting/tdm_spawn

#TDM Spawn after delay

execute if score #gamemode settings matches 1 run scoreboard players add @a[predicate=commands:in_tdm_gates] tdmSpawnTime 1

execute as @a[scores={tdmSpawnTime=300..}] at @s run function commands:starting/tdm_spawn

execute if score #gamemode settings matches 1 run scoreboard players reset @a[predicate=!commands:in_tdm_gates] tdmSpawnTime

#Russian Roulette

scoreboard players remove @a[scores={rouletteTimer=1..},predicate=commands:inventory/russian_roulette] rouletteTimer 1

execute as @a[scores={usedCOAS=1..,rouletteTimer=..0},predicate=commands:holding/russian_roulette] run tag @s add rouletteShot

execute as @a[tag=rouletteShot] at @s anchored eyes run function commands:other/russian_roulette

#Betting Chips

execute as @a[tag=!chipbet,scores={chipBet=1..5}] run function commands:other/betting_chips

scoreboard players add @a[scores={chipBet=1..5}] betChipTimer 1

scoreboard players add @a[tag=hasBounty] betChipTimer 1

execute as @a[scores={betChipTimer=400..}] run function commands:other/betting_chip_end

#Inspection

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/inspection] run function commands:other/inspection

#Security Guard

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/security_guard] at @s run function commands:other/security_guard

scoreboard players add @e[type=zombified_piglin,tag=security] securityTimer 1

execute as @e[type=zombified_piglin,tag=security,scores={securityTimer=20..}] run function commands:other/security_guard_target

#Coin Gun

scoreboard players remove @a[scores={coinGunTimer=1..},predicate=commands:inventory/coin_gun] coinGunTimer 1

execute as @a[scores={usedCOAS=1..,coinGunTimer=..0,Money=100..},predicate=commands:holding/coin_gun] run tag @s add coinGun

execute as @a[tag=coinGun] at @s run function commands:other/coin_gun

execute as @e[type=item,tag=coinBulletRed] at @s run tag @a[team=Blue,distance=..2,limit=1,sort=nearest] add coinHit

execute as @e[type=item,tag=coinBulletBlue] at @s run tag @a[team=Red,distance=..2,limit=1,sort=nearest] add coinHit

execute as @a[tag=coinHit] at @s run function commands:other/coin_gun_hit

kill @e[type=item,tag=coinBullet,nbt={OnGround:1b}]

#Busted (Gambler Ultimate)

execute as @a[scores={Ultimate=25},tag=!notAlive,predicate=!commands:inventory/busted] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s bustedTimer 1

give @a[scores={bustedTimer=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Busted!","color":"gold","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Severely damages all enemies above 21 HP."}','{"text":"Affected players will also lose all of their healing buffs."}']},Enchantments:[{}],CustomModelData:149,ultimateitem:1b,busted:1b} 1

scoreboard players reset @a[scores={bustedTimer=3200..}] bustedTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/busted] run function commands:ultimates/busted

#Sleight of Hand (Gambler Alt Ultimate)

execute as @a[scores={Ultimate=26},tag=!notAlive,predicate=!commands:inventory/sleight_of_hand] at @s unless entity @e[type=item,scores={ItemKill=1},distance=..2] run scoreboard players add @s sleightTimer 1

give @a[scores={sleightTimer=3200..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sleight of Hand","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Supercharges your Playing Cards."}','{"text":"Reduces cooldown of playing cards to 2s."}','{"text":"Also causes the last two cards to always have a value of 13."}','{"text":"Lasts 15s."}']},CustomModelData:166,sleightofhand:1b,ultimateitem:1b} 1

scoreboard players reset @a[scores={sleightTimer=3200..}] sleightTimer

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/sleight_of_hand] run function commands:ultimates/sleight_of_hand

scoreboard players add @a[tag=sleightofhand] sleightDur 1

tag @a[scores={sleightDur=300..}] remove sleightofhand

scoreboard players reset @a[scores={sleightDur=300..}] sleightDur

#Playing Cards

scoreboard players remove @a[scores={Kit=13,pCardsTimer=1..},predicate=commands:inventory/playing_cards,predicate=commands:in_any_battlefield,tag=!notAlive] pCardsTimer 1

execute as @a[scores={usedCOAS=1..,pCardsTimer=..0},predicate=commands:holding/playing_cards] run tag @s add cardShooter

execute as @a[tag=cardShooter] at @s run function commands:other/playing_cards

execute as @e[type=item,tag=pCardRed] at @s run tag @a[team=Blue,distance=..2] add cardEffect

execute as @e[type=item,tag=pCardBlue] at @s run tag @a[team=Red,distance=..2] add cardEffect

execute as @a[tag=cardEffect] at @s run function commands:other/playing_card_damage

scoreboard players add @e[type=item,tag=pCard] pCardsTimer 1

kill @e[type=item,scores={pCardsTimer=12..}]

#Gambler Cooldown Displays

execute as @a[scores={Kit=13}] run scoreboard players operation @s pCardStore = @s pCardsTimer

execute as @a[scores={Kit=13}] store result score @s pCardDis run scoreboard players operation @s pCardStore /= #ticks constant

execute as @a[scores={Kit=13},predicate=commands:inventory/russian_roulette] run scoreboard players operation @s rouletteStore = @s rouletteTimer

execute as @a[scores={Kit=13},predicate=commands:inventory/russian_roulette] store result score @s rouletteDis run scoreboard players operation @s rouletteStore /= #ticks constant

execute as @a[scores={Kit=13},predicate=commands:inventory/coin_gun] run scoreboard players operation @s coinGunStore = @s coinGunTimer

execute as @a[scores={Kit=13},predicate=commands:inventory/coin_gun] store result score @s coinGunDis run scoreboard players operation @s coinGunStore /= #ticks constant

title @a[scores={Kit=13},predicate=!commands:inventory/russian_roulette,predicate=!commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"}]

title @a[scores={Kit=13},predicate=commands:inventory/russian_roulette,predicate=!commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"},{"text":"   Russian Roulette: ","color":"green"},{"score":{"name":"*","objective":"rouletteDis"},"color":"aqua"}]

title @a[scores={Kit=13},predicate=!commands:inventory/russian_roulette,predicate=commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"},{"text":"   Coin Gun: ","color":"green"},{"score":{"name":"*","objective":"coinGunDis"},"color":"aqua"}]

title @a[scores={Kit=13},predicate=commands:inventory/russian_roulette,predicate=commands:inventory/coin_gun] actionbar [{"text":"Playing Cards: ","color":"green"},{"score":{"name":"*","objective":"pCardDis"},"color":"aqua"},{"text":"   Russian Roulette: ","color":"green"},{"score":{"name":"*","objective":"rouletteDis"},"color":"aqua"},{"text":"   Coin Gun: ","color":"green"},{"score":{"name":"*","objective":"coinGunDis"},"color":"aqua"}]

#King health lowers after Game Duration

execute if entity @a[scores={End=100..}] run scoreboard players add #gameDuration gameDuration 1

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players add #loseKingHP gameDuration 1

execute if score #gameDuration gameDuration matches 18000 if score #gamemode settings matches 0 run title @a title {"text":"Your kings have been weakened!","color":"dark_red"}

execute if score #gameDuration gameDuration matches 18000 if score #gamemode settings matches 0 run title @a subtitle {"text":"The game has been going on for 15 minutes!","color":"green"}

execute if score #loseKingHP gameDuration matches 20.. as @e[type=wither_skeleton,tag=King] run function commands:other/lower_king_hp

#Teleport to Dungeons

scoreboard players add @a[tag=dungeonTP] dungeonDelay 1

execute as @a[scores={dungeonDelay=60..}] run function commands:other/dungeon_tp

execute as @a[tag=dungeonTP,scores={damageTaken=1..}] run function commands:other/dungeon_cancel

#Slime block jump boost

execute as @a[predicate=commands:on_launch_pads] at @s if block ~ ~-0.5 ~ slime_block run effect give @s jump_boost 1 13 true

#Winterland Boats

scoreboard players add @e[type=boat,tag=winterBoat] Timer 1

kill @e[type=boat,tag=winterBoat,scores={Timer=400..}]

#Asteroid

scoreboard players remove @a[scores={Kit=14,asteroidTimer=1..},predicate=commands:in_any_battlefield,tag=!notAlive] asteroidTimer 1

execute as @a[scores={usedCOAS=1..,asteroidTimer=..0},predicate=commands:holding/asteroid] run tag @s add asteroidShooter

execute as @a[tag=asteroidShooter] at @s run function commands:other/asteroid

execute as @e[type=area_effect_cloud,tag=asteroidLand] unless predicate commands:is_riding_asteroid at @s run function commands:other/asteroid_land

execute as @e[type=item,tag=asteroidshard,nbt={OnGround:1b}] at @s run function commands:other/asteroid_shard 

#Rocket Boosters

execute as @a[scores={usedCOAS=1..},predicate=commands:holding/rocket_boosters] at @s run function commands:other/rocket_boosters

#Enhanced Space Helmet

effect clear @a[predicate=commands:armor/enhanced_space_helmet] blindness

effect clear @a[predicate=commands:armor/enhanced_space_helmet] wither

effect clear @a[predicate=commands:armor/enhanced_space_helmet] poison

#Remove Arrows and tridents on ground

kill @e[type=arrow,nbt={inGround:1b}]

kill @e[type=trident,nbt={inGround:1b},nbt=!{Trident:{tag:{throwingblade:1b}}}]

#Score Reset

tag @a[scores={died=1..}] remove insured

scoreboard players reset @a[scores={died=1..}] scourgeKills

scoreboard players reset @a[scores={gliding=1..}] gliding

scoreboard players reset @a[scores={died=1..}] JBTime

scoreboard players reset @a[scores={died=1..}] JBFix

scoreboard players set @a[scores={Ninjakill=1..}] Ninjakill 0

scoreboard players reset @a[scores={usedCOAS=1..}] usedCOAS

scoreboard players reset @a[scores={damage=1..}] damage

scoreboard players reset @a[scores={died=1..}] killStreak

scoreboard players reset @a[scores={died=1..}] Mimic

scoreboard players reset @a[scores={damageTaken=1..}] damageTaken

execute as @a[scores={died=1..}] at @s run tag @e[type=item,distance=..5,scores={ItemKill=1..}] add delete

kill @e[type=item,scores={ItemKill=1,Timer=1..},tag=delete]

scoreboard players set @a[scores={died=1..}] died 0

#Other Clears

advancement revoke @a only commands:warrior_challenge_damage

advancement revoke @a only commands:warrior_challenge_kill

