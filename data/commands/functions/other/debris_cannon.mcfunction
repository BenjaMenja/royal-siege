execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","redDebris","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,reddebris:1b,a:1}}}}

execute at @s[team=Red] anchored eyes run summon minecraft:item ^-0.1 ^0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","redDebris","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,reddebris:1b,a:2}}}}

execute at @s[team=Red] anchored eyes run summon minecraft:item ^0.1 ^0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","redDebris","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,reddebris:1b,a:3}}}}

execute at @s[team=Red] anchored eyes run summon minecraft:item ^-0.1 ^-0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","redDebris","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,reddebris:1b,a:4}}}}

execute at @s[team=Red] anchored eyes run summon minecraft:item ^0.1 ^-0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","redDebris","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,reddebris:1b,a:5}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","blueDebris","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,bluedebris:1b,a:1}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^-0.1 ^0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","blueDebris","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,bluedebris:1b,a:1}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^0.1 ^0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","blueDebris","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,bluedebris:1b,a:1}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^-0.1 ^-0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","blueDebris","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,bluedebris:1b,a:1}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^0.1 ^-0.05 ^1 {Health:20,PickupDelay:2,Tags:["debrisitem","blueDebris","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":180,"minecraft:custom_data":{debrisitem:1b,bluedebris:1b,a:1}}}}

execute as @e[tag=debrisitem] run data modify entity @s Owner set from entity @a[tag=debrisShooter,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=debrisitem,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=debrisitem,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=debrisitem,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=debrisitem,tag=!stop] run scoreboard players operation @s posX -= @a[tag=debrisShooter,limit=1] posX

execute as @e[tag=debrisitem,tag=!stop] run scoreboard players operation @s posY -= @a[tag=debrisShooter,limit=1] posY

execute as @e[tag=debrisitem,tag=!stop] run scoreboard players operation @s posZ -= @a[tag=debrisShooter,limit=1] posZ

execute as @e[tag=debrisitem,tag=!stop] store result entity @s Motion[0] double 0.0024 run scoreboard players get @s posX

execute as @e[tag=debrisitem,tag=!stop] store result entity @s Motion[1] double 0.0024 run scoreboard players get @s posY

execute as @e[tag=debrisitem,tag=!stop] store result entity @s Motion[2] double 0.0024 run scoreboard players get @s posZ

tag @e[tag=debrisitem] add stop

tag @s remove debrisShooter

scoreboard players set @s debrisTimer 240