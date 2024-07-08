execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,Tags:["cCannonItem","redProj"],Item:{id:"minecraft:end_crystal",count:1},PickupDelay:32767}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,Tags:["cCannonItem","blueProj"],Item:{id:"minecraft:end_crystal",count:1},PickupDelay:32767}

execute at @s run playsound block.glass.break master @s ~ ~ ~ 1 0

data modify entity @e[type=item,tag=cCannonItem,limit=1] Owner set from entity @s UUID

execute anchored eyes store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[type=item,sort=nearest,limit=1,tag=cCannonItem,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[type=item,sort=nearest,limit=1,tag=cCannonItem,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[type=item,sort=nearest,limit=1,tag=cCannonItem,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[type=item,tag=cCannonItem,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[type=item,tag=cCannonItem,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[type=item,tag=cCannonItem,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[type=item,tag=cCannonItem,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0016 run scoreboard players get @s posX

execute as @e[type=item,tag=cCannonItem,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0016 run scoreboard players get @s posY

execute as @e[type=item,tag=cCannonItem,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0016 run scoreboard players get @s posZ

tag @e[tag=cCannonItem] add stop

scoreboard players set @s cCannonTimer 400