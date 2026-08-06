tag @s add sparkingStaffUse

execute at @s[team=Red] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["sparkingStaffProjectileRed","sparkingStaffProjectile","redProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:item_model":"royalsiege:sparking_staff_spark"}}}

execute at @s[team=Blue] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["sparkingStaffProjectileBlue","sparkingStaffProjectile","blueProj"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:item_model":"royalsiege:sparking_staff_spark"}}}

execute as @e[tag=sparkingStaffProjectile] run data modify entity @s Owner set from entity @a[tag=sparkingStaffUse,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=sparkingStaffProjectile,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=sparkingStaffProjectile,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=sparkingStaffProjectile,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=sparkingStaffProjectile,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=sparkingStaffProjectile,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=sparkingStaffProjectile,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=sparkingStaffProjectile,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0005 run scoreboard players get @s posX

execute as @e[tag=sparkingStaffProjectile,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0005 run scoreboard players get @s posY

execute as @e[tag=sparkingStaffProjectile,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0005 run scoreboard players get @s posZ

tag @e[tag=sparkingStaffProjectile] add stop

tag @s remove sparkingStaffUse

scoreboard players set @s sparkingStaffCount 0