execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["eggred","egg","redProj"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:106}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["eggblue","egg","blueProj"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:106}}}

execute at @s run playsound minecraft:block.slime_block.hit master @s ~ ~ ~ 1 0

execute as @a[tag=scramble] anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute as @a[tag=scramble] anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute as @a[tag=scramble] anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

execute as @a[tag=scramble] run scoreboard players add @s posY 1620

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Pos[2] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Pos[2] 1000

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posX -= @a[tag=scramble,team=Red] posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posY -= @a[tag=scramble,team=Red] posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posZ -= @a[tag=scramble,team=Red] posZ

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posX -= @a[tag=scramble,team=Blue] posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posY -= @a[tag=scramble,team=Blue] posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posZ -= @a[tag=scramble,team=Blue] posZ

execute as @a[tag=scramble,team=Red] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Motion[0] double 0.002 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posX

execute as @a[tag=scramble,team=Red] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Motion[1] double 0.002 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posY

execute as @a[tag=scramble,team=Red] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] Motion[2] double 0.002 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=eggred,tag=!stop] posZ

execute as @a[tag=scramble,team=Blue] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Motion[0] double 0.002 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posX

execute as @a[tag=scramble,team=Blue] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Motion[1] double 0.002 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posY

execute as @a[tag=scramble,team=Blue] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] Motion[2] double 0.002 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=eggblue,tag=!stop] posZ

tag @e[type=item,tag=eggred] add stop

tag @e[type=item,tag=eggblue] add stop

scoreboard players set @a[tag=scramble] scrambleTimer 0

function commands:replace/scrambled_eggs_replace
