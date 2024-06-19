execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["eggred","egg","redProj"],Item:{id:"minecraft:egg",Count:1b,components:{"minecraft:custom_model_data":106}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["eggblue","egg","blueProj"],Item:{id:"minecraft:egg",Count:1b,components:{"minecraft:custom_model_data":106}}}

execute at @s run playsound minecraft:block.slime_block.hit master @s ~ ~ ~ 1 0

execute anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Pos[2] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Pos[2] 1000

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posX -= @s[team=Red] posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posY -= @s[team=Red] posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posZ -= @s[team=Red] posZ

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posX -= @s[team=Blue] posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posY -= @s[team=Blue] posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posZ -= @s[team=Blue] posZ

execute as @e[type=item,sort=nearest,limit=1,tag=egg,tag=!stop] store result entity @s Motion[0] double 0.002 run scoreboard players get @s posX

execute as @e[type=item,sort=nearest,limit=1,tag=egg,tag=!stop] store result entity @s Motion[1] double 0.002 run scoreboard players get @s posY

execute as @e[type=item,sort=nearest,limit=1,tag=egg,tag=!stop] store result entity @s Motion[2] double 0.002 run scoreboard players get @s posZ

tag @e[type=item,tag=eggred] add stop

tag @e[type=item,tag=eggblue] add stop

scoreboard players set @s scrambleTimer 500
