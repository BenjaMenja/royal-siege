function commands:other/line_of_sight

execute if entity @s[tag=smartDroneRed] if entity @a[team=Blue,tag=inLOS] at @s anchored eyes run summon item ^ ^ ^ {NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Tags:["smartDroneLaserRed","smartDroneLaser","redProj"],Item:{id:"minecraft:redstone",Count:1b}}

execute if entity @s[tag=smartDroneBlue] if entity @a[team=Red,tag=inLOS] at @s anchored eyes run summon item ^ ^ ^ {NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Tags:["smartDroneLaserBlue","smartDroneLaser","blueProj"],Item:{id:"minecraft:redstone",Count:1b}}

execute as @e[type=item,tag=smartDroneLaserRed] run data modify entity @s Owner set from entity @a[team=Red,limit=1,scores={Kit=14}] UUID

execute as @e[type=item,tag=smartDroneLaserBlue] run data modify entity @s Owner set from entity @a[team=Blue,limit=1,scores={Kit=14}] UUID

execute if entity @s[tag=smartDroneRed] as @p[team=Blue,tag=inLOS] store result score @s posX run data get entity @s Pos[0] 1000

execute if entity @s[tag=smartDroneRed] as @p[team=Blue,tag=inLOS] store result score @s posY run data get entity @s Pos[1] 1000

execute if entity @s[tag=smartDroneRed] as @p[team=Blue,tag=inLOS] store result score @s posZ run data get entity @s Pos[2] 1000

execute if entity @s[tag=smartDroneBlue] as @p[team=Red,tag=inLOS] store result score @s posX run data get entity @s Pos[0] 1000

execute if entity @s[tag=smartDroneBlue] as @p[team=Red,tag=inLOS] store result score @s posY run data get entity @s Pos[1] 1000

execute if entity @s[tag=smartDroneBlue] as @p[team=Red,tag=inLOS] store result score @s posZ run data get entity @s Pos[2] 1000

execute if entity @s[tag=smartDroneRed] run scoreboard players add @p[team=Blue,tag=inLOS] posY 1620

execute if entity @s[tag=smartDroneBlue] run scoreboard players add @p[team=Red,tag=inLOS] posY 1620

execute as @e[sort=nearest,limit=1,tag=smartDroneLaser,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=smartDroneLaser,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=smartDroneLaser,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute if entity @s[tag=smartDroneRed] run scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posX -= @p[team=Blue,tag=inLOS] posX

execute if entity @s[tag=smartDroneRed] run scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posY -= @p[team=Blue,tag=inLOS] posY

execute if entity @s[tag=smartDroneRed] run scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posZ -= @p[team=Blue,tag=inLOS] posZ

execute if entity @s[tag=smartDroneBlue] run scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posX -= @p[team=Red,tag=inLOS] posX

execute if entity @s[tag=smartDroneBlue] run scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posY -= @p[team=Red,tag=inLOS] posY

execute if entity @s[tag=smartDroneBlue] run scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posZ -= @p[team=Red,tag=inLOS] posZ

scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posX *= #-1 constant

scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posY *= #-1 constant

scoreboard players operation @e[tag=smartDroneLaser,limit=1,tag=!stop] posZ *= #-1 constant

execute as @e[tag=smartDroneLaser,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s posX

execute as @e[tag=smartDroneLaser,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s posY

execute as @e[tag=smartDroneLaser,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s posZ

tag @e[tag=smartDroneLaser] add stop

scoreboard players reset @s droneCD

tag @a remove inLOS

tag @a remove LOSfound