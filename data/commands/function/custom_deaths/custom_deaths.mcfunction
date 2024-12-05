#Dropping Money

execute unless entity @a[team=Blue,predicate=commands:inventory/insurance] at @s[team=Blue] run function commands:entities/siege_coin

execute unless entity @a[team=Red,predicate=commands:inventory/insurance] at @s[team=Red] run function commands:entities/siege_coin

execute if entity @a[team=Red,predicate=commands:inventory/insurance] run scoreboard players add @s Money 100

execute if entity @a[team=Red,predicate=commands:inventory/insurance] run scoreboard players add @s totalSiegeBucks 100

execute if entity @a[team=Blue,predicate=commands:inventory/insurance] run scoreboard players add @s Money 100

execute if entity @a[team=Blue,predicate=commands:inventory/insurance] run scoreboard players add @s totalSiegeBucks 100

#Custom Death Messages

execute if entity @s[tag=tChestDeath] run function commands:custom_deaths/treasure_chest_death

#Resurrection Soul

execute at @s[team=Red] if entity @a[team=Red,scores={Kit=4,Ultimate=14}] run summon minecraft:marker ~ ~ ~ {Tags:["resSoulRed","resSoul"]}

execute at @s[team=Blue] if entity @a[team=Blue,scores={Kit=4,Ultimate=14}] run summon minecraft:marker ~ ~ ~ {Tags:["resSoulBlue","resSoul"]}

execute at @s run scoreboard players operation @e[type=marker,tag=resSoul,sort=nearest,limit=1] UUID = @s UUID

#Kill Wizard Minions

execute if entity @s[team=Red,scores={Kit=6}] run kill @e[type=zombie,team=Red,tag=WM]

execute if entity @s[team=Blue,scores={Kit=6}] run kill @e[type=zombie,team=Blue,tag=WM]

#TDM Kill Counter

execute if entity @s[team=Red] if score #gamemode settings matches 1 run scoreboard players add #bluekills tdmKills 1

execute if entity @s[team=Blue] if score #gamemode settings matches 1 run scoreboard players add #redkills tdmKills 1

#Betting Chips

execute if entity @s[tag=hasBounty] run function commands:other/betting_chip_kill

#Score Removals

function commands:custom_deaths/reset_cooldowns

scoreboard players set @s[predicate=commands:in_practice_range] totalDeaths 0

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players set @s Respawn -101

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players set @s RedKit -101

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run scoreboard players set @s BlueKit -101

scoreboard players reset @s InvisDur

execute if entity @s[team=Red,scores={Kit=4}] run scoreboard players set #redHS healstreak 0

tag @s[team=Red,tag=blessed] remove blessed

execute if entity @s[team=Blue,scores={Kit=4}] run scoreboard players set #blueHS healstreak 0

tag @s[team=Blue,tag=blessed] remove blessed

#Attribute Removal

function commands:attributes/clear_all_attribute_modifiers

#Ultimate Check

tag @s[tag=ultimateInv] add hadUltimate

tag @s add notAlive

#Other Tag removals

tag @s remove custom_death

tag @s remove hasDebrisCannon

tag @s remove hasGravityCanceler

tag @s remove cloaked

tag @s remove justiceKill

tag @s remove blessed

tag @s remove mimiceat

tag @s remove gamblerMoneyStolen

tag @s remove vaccinated

tag @s remove UHC

#Reset scores and run function again

scoreboard players set @s Message 0

execute as @a[scores={Message=1..},limit=1] run function commands:custom_deaths/custom_deaths