tag @s add defibShot

execute at @s[team=Red] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["defibRed","defib","redProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":201}}}

execute at @s[team=Blue] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["defibBlue","defib","blueProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":201}}}

execute as @e[type=item,tag=defib] run data modify entity @s Owner set from entity @a[tag=defibShot,limit=1] UUID

playsound royalsiege:abilities.chain_hook_extend master @s ~ ~ ~ 0.6 2

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=defib,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=defib,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=defib,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=defib,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=defib,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=defib,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=defib,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0008 run scoreboard players get @s posX

execute as @e[tag=defib,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0008 run scoreboard players get @s posY

execute as @e[tag=defib,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0008 run scoreboard players get @s posZ

tag @e[tag=defib] add stop

tag @s remove defibShot

scoreboard players set @s defibrillatorTimer 500