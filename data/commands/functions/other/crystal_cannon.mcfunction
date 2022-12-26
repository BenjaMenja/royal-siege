execute at @s anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,Tags:["cCannonItem"],Item:{id:"minecraft:end_crystal",Count:1b},PickupDelay:32767}

execute at @s run playsound block.glass.break master @s ~ ~ ~ 1 0

execute as @e[tag=cCannonItem] run data modify entity @s Owner set from entity @a[tag=cCannon,limit=1] UUID

execute as @a[tag=cCannon] anchored eyes store result score @s posX run data get entity @s Pos[0] 1000

execute as @a[tag=cCannon] anchored eyes store result score @s posY run data get entity @s Pos[1] 1000

execute as @a[tag=cCannon] anchored eyes store result score @s posZ run data get entity @s Pos[2] 1000

execute as @a[tag=cCannon] run scoreboard players add @s posY 1620

execute store result score @e[sort=nearest,limit=1,tag=cCannonItem,tag=!stop] posX run data get entity @e[sort=nearest,limit=1,tag=cCannonItem,tag=!stop] Pos[0] 1000

execute store result score @e[sort=nearest,limit=1,tag=cCannonItem,tag=!stop] posY run data get entity @e[sort=nearest,limit=1,tag=cCannonItem,tag=!stop] Pos[1] 1000

execute store result score @e[sort=nearest,limit=1,tag=cCannonItem,tag=!stop] posZ run data get entity @e[sort=nearest,limit=1,tag=cCannonItem,tag=!stop] Pos[2] 1000

scoreboard players operation @e[tag=cCannonItem,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=cCannonItem,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=cCannonItem,limit=1,tag=!stop] posZ -= @s posZ

execute store result entity @e[tag=cCannonItem,limit=1,tag=!stop] Motion[0] double 0.0016 run scoreboard players get @e[tag=cCannonItem,limit=1,tag=!stop] posX

execute store result entity @e[tag=cCannonItem,limit=1,tag=!stop] Motion[1] double 0.0016 run scoreboard players get @e[tag=cCannonItem,limit=1,tag=!stop] posY

execute store result entity @e[tag=cCannonItem,limit=1,tag=!stop] Motion[2] double 0.0016 run scoreboard players get @e[tag=cCannonItem,limit=1,tag=!stop] posZ

tag @e[tag=cCannonItem] add stop

scoreboard players set @s cCannonTimer 400