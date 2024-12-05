execute if entity @s[team=Red] if entity @e[type=item,tag=ivRed] as @p[team=Red,tag=ivAttached] at @s run function commands:other/iv_detach

execute if entity @s[team=Blue] if entity @e[type=item,tag=ivBlue] as @p[team=Blue,tag=ivAttached] at @s run function commands:other/iv_detach

execute if score @s ivDripTimer matches 1.. run return -1

#Proceed if no needle is out

tag @s add ivShot

execute at @s[team=Red] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["ivRed","ivNeedle","redProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":199}}}

execute at @s[team=Blue] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["ivBlue","ivNeedle","blueProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":199}}}

execute as @e[type=item,tag=ivNeedle,tag=!stop] run data modify entity @s Owner set from entity @a[tag=ivShot,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=ivNeedle,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=ivNeedle,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=ivNeedle,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=ivNeedle,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=ivNeedle,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=ivNeedle,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=ivNeedle,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0008 run scoreboard players get @s posX

execute as @e[tag=ivNeedle,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0008 run scoreboard players get @s posY

execute as @e[tag=ivNeedle,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0008 run scoreboard players get @s posZ

tag @e[tag=ivNeedle] add stop

tag @s remove ivShot