execute at @s[team=Red] anchored eyes run summon minecraft:dragon_fireball ^ ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","redProj"]}

execute at @s[team=Red,tag=wrenched] anchored eyes run summon minecraft:dragon_fireball ^0.075 ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","redProj"]}

execute at @s[team=Red,tag=wrenched] anchored eyes run summon minecraft:dragon_fireball ^-0.075 ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","redProj"]}

execute at @s[team=Blue] anchored eyes run summon minecraft:dragon_fireball ^ ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","blueProj"]}

execute at @s[team=Blue,tag=wrenched] anchored eyes run summon minecraft:dragon_fireball ^0.075 ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","blueProj"]}

execute at @s[team=Blue,tag=wrenched] anchored eyes run summon minecraft:dragon_fireball ^-0.075 ^ ^1 {power:[0.0,0.0,0.0],Tags:["dRageFireball","blueProj"]}

execute as @e[tag=dRageFireball] run data modify entity @s Owner set from entity @a[tag=dRage,limit=1] UUID

execute as @a[scores={Kit=12}] anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute as @a[scores={Kit=12}] anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute as @a[scores={Kit=12}] anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

execute as @a[scores={Kit=12}] run scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=dRageFireball,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=dRageFireball,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=dRageFireball,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=dRageFireball,tag=!stop] run scoreboard players operation @s posX -= @a[limit=1,tag=dRage] posX

execute as @e[tag=dRageFireball,tag=!stop] run scoreboard players operation @s posY -= @a[limit=1,tag=dRage] posY

execute as @e[tag=dRageFireball,tag=!stop] run scoreboard players operation @s posZ -= @a[limit=1,tag=dRage] posZ

execute as @e[tag=dRageFireball,tag=!stop] store result entity @s power[0] double 0.0008 run scoreboard players get @s posX

execute as @e[tag=dRageFireball,tag=!stop] store result entity @s power[1] double 0.0008 run scoreboard players get @s posY

execute as @e[tag=dRageFireball,tag=!stop] store result entity @s power[2] double 0.0008 run scoreboard players get @s posZ

tag @e[tag=dRageFireball] add stop

scoreboard players set @s dragonRageTimer 200

tag @s remove wrenched

function commands:replace/dragon_rage_replace