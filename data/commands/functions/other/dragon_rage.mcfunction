execute at @s[team=Red] anchored eyes run summon minecraft:dragon_fireball ^ ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","redProj"]}

execute at @s[team=Blue] anchored eyes run summon minecraft:dragon_fireball ^ ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","blueProj"]}

execute as @e[tag=dRageFireball] run data modify entity @s Owner set from entity @a[tag=dRage,limit=1] UUID

execute as @a[scores={Kit=12}] anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute as @a[scores={Kit=12}] anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute as @a[scores={Kit=12}] anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

execute as @a[scores={Kit=12}] run scoreboard players add @s posY 1620

execute store result score @e[sort=nearest,limit=1,tag=dRageFireball,tag=!stop] posX run data get entity @e[sort=nearest,limit=1,tag=dRageFireball,tag=!stop] Pos[0] 1000

execute store result score @e[sort=nearest,limit=1,tag=dRageFireball,tag=!stop] posY run data get entity @e[sort=nearest,limit=1,tag=dRageFireball,tag=!stop] Pos[1] 1000

execute store result score @e[sort=nearest,limit=1,tag=dRageFireball,tag=!stop] posZ run data get entity @e[sort=nearest,limit=1,tag=dRageFireball,tag=!stop] Pos[2] 1000

scoreboard players operation @e[tag=dRageFireball,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=dRageFireball,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=dRageFireball,limit=1,tag=!stop] posZ -= @s posZ

execute store result entity @e[tag=dRageFireball,limit=1,tag=!stop] power[0] double 0.0008 run scoreboard players get @e[tag=dRageFireball,limit=1,tag=!stop] posX

execute store result entity @e[tag=dRageFireball,limit=1,tag=!stop] power[1] double 0.0008 run scoreboard players get @e[tag=dRageFireball,limit=1,tag=!stop] posY

execute store result entity @e[tag=dRageFireball,limit=1,tag=!stop] power[2] double 0.0008 run scoreboard players get @e[tag=dRageFireball,limit=1,tag=!stop] posZ

tag @e[tag=dRageFireball] add stop

scoreboard players set @s dragonRageTimer 200

function commands:replace/dragon_rage_replace