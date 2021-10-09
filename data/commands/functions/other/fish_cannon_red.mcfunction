execute at @s anchored eyes run summon minecraft:item ^ ^ ^1 {PickupDelay:32767,Tags:["fishCannon","fishCannonRed"],Item:{id:"minecraft:cod",Count:1b}}

execute at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 1.5

execute at @s run playsound royalsiege:abilities.fish_cannon master @a[distance=..10] ~ ~ ~ 1 1

execute as @a[scores={Kit=9}] anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute as @a[scores={Kit=9}] anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute as @a[scores={Kit=9}] anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

execute as @a[scores={Kit=9}] run scoreboard players add @s posY 1620

execute store result score @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Pos[2] 1000

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posX -= @a[scores={Kit=9},tag=fishCannonRed] posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posY -= @a[scores={Kit=9},tag=fishCannonRed] posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posZ -= @a[scores={Kit=9},tag=fishCannonRed] posZ

execute as @a[scores={Kit=9},tag=fishCannonRed] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Motion[0] double 0.0064 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posX

execute as @a[scores={Kit=9},tag=fishCannonRed] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Motion[1] double 0.0064 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posY

execute as @a[scores={Kit=9},tag=fishCannonRed] run execute store result entity @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] Motion[2] double 0.0064 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=fishCannonRed,tag=!stop] posZ

tag @e[type=item,tag=fishCannonRed] add stop

scoreboard players set @a[tag=fishCannonRed] fishCannonTimer 200

function commands:replace/fish_cannon_red_replace