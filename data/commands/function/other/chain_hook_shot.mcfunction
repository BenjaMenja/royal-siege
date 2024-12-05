execute at @s[team=Red] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["hookRed","hook","redProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":29}}}

execute at @s[team=Blue] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,NoGravity:1b,Tags:["hookBlue","hook","blueProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":29}}}

execute as @e[tag=hook] run data modify entity @s Owner set from entity @a[tag=chain,limit=1] UUID

playsound royalsiege:abilities.chain_hook_extend master @s ~ ~ ~ 0.6 1

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=hook,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=hook,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=hook,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=hook,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=hook,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=hook,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=hook,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s posX

execute as @e[tag=hook,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s posY

execute as @e[tag=hook,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s posZ

execute as @e[tag=hook,tag=!stop] at @s store result score @s chainHookUUID run scoreboard players get @p[tag=chain] UUID

tag @e[tag=hook] add stop

tag @s remove chain

scoreboard players set @s cHookCD 400