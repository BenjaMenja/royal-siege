execute at @s[team=Red] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","card1","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Red] anchored eyes run summon item ^0.04 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","card2","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Red] anchored eyes run summon item ^-0.04 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","card3","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Red] anchored eyes run summon item ^0.08 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","card4","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Red] anchored eyes run summon item ^-0.08 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","card5","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Red] anchored eyes run summon item ~ -5 ~ {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","pCardExtra","card6","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Red] anchored eyes run summon item ~ -5 ~ {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardRed","pCard","pCardExtra","card7","redProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","card1","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ^0.04 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","card2","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ^-0.04 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","card3","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ^0.08 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","card4","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ^-0.08 ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","card5","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ~ -5 ~ {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","pCardExtra","card6","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute at @s[team=Blue] anchored eyes run summon item ~ -5 ~ {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["pCardBlue","pCard","pCardExtra","card7","blueProj"],Item:{id:"minecraft:map",Count:1b,tag:{CustomModelData:152}}}

execute as @e[tag=pCard] run data modify entity @s Owner set from entity @a[tag=cardShooter,limit=1] UUID

execute at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 2

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=pCard,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=pCard,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=pCard,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=pCard,tag=!stop] run scoreboard players operation @s posX -= @a[limit=1,tag=cardShooter] posX

execute as @e[tag=pCard,tag=!stop] run scoreboard players operation @s posY -= @a[limit=1,tag=cardShooter] posY

execute as @e[tag=pCard,tag=!stop] run scoreboard players operation @s posZ -= @a[limit=1,tag=cardShooter] posZ

execute as @e[tag=pCard,tag=!stop] store result entity @s Motion[0] double 0.0017 run scoreboard players get @s posX

execute as @e[tag=pCard,tag=!stop] store result entity @s Motion[1] double 0.0017 run scoreboard players get @s posY

execute as @e[tag=pCard,tag=!stop] store result entity @s Motion[2] double 0.0017 run scoreboard players get @s posZ

scoreboard players set #cardTemp cardValue 0

execute as @e[tag=pCard,tag=!stop] run function commands:other/playing_card_calculation

tag @e[tag=pCard] add stop

scoreboard players set @s[tag=!sleightofhand] pCardsTimer 240

scoreboard players set @s[tag=sleightofhand] pCardsTimer 40

tag @s remove cardShooter