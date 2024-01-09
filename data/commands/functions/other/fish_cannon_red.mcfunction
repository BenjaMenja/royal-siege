execute at @s anchored eyes run summon minecraft:item ^ ^ ^1 {PickupDelay:32767,Tags:["fishCannon","fishCannonRed"],Item:{id:"minecraft:cod",Count:1b}}

execute at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 1.5

execute at @s run playsound royalsiege:abilities.fish_cannon master @a[distance=..10] ~ ~ ~ 1 1

execute anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute store result score @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Pos[2] 1000

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posX -= @s posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posY -= @s posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posZ -= @s posZ

execute as @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] store result entity @s Motion[0] double 0.0064 run scoreboard players get @s posX

execute as @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] store result entity @s Motion[1] double 0.0064 run scoreboard players get @s posY

execute as @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] store result entity @s Motion[2] double 0.0064 run scoreboard players get @s posZ

tag @e[type=item,tag=fishCannonRed] add stop

scoreboard players set @s fishCannonTimer 200