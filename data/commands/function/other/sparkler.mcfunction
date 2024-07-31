execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {PickupDelay:32767,Invulnerable:1b,Tags:["sparkleritem","sparklerred","redProj"],Item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":186}}}

execute at @s[team=Red] anchored eyes run summon minecraft:item ^0.05 ^ ^1 {PickupDelay:32767,Invulnerable:1b,Tags:["sparkleritem","sparklerred","redProj"],Item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":186}}}

execute at @s[team=Red] anchored eyes run summon minecraft:item ^-0.05 ^ ^1 {PickupDelay:32767,Invulnerable:1b,Tags:["sparkleritem","sparklerred","redProj"],Item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":186}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {PickupDelay:32767,Invulnerable:1b,Tags:["sparkleritem","sparklerblue","blueProj"],Item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":186}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^0.05 ^ ^1 {PickupDelay:32767,Invulnerable:1b,Tags:["sparkleritem","sparklerblue","blueProj"],Item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":186}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^-0.05 ^ ^1 {PickupDelay:32767,Invulnerable:1b,Tags:["sparkleritem","sparklerblue","blueProj"],Item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":186}}}

execute if entity @s[tag=sparklerupgrade] run tag @e[type=item,tag=sparkleritem,limit=3,sort=nearest] add sparklerupgrade

execute if entity @s[tag=sparklerbigupgrade] run tag @e[type=item,tag=sparkleritem,limit=3,sort=nearest] add sparklerbigupgrade

execute at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1.9

execute anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] at @s run scoreboard players operation @s posX -= @p[scores={Kit=15}] posX

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] at @s run scoreboard players operation @s posY -= @p[scores={Kit=15}] posY

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] at @s run scoreboard players operation @s posZ -= @p[scores={Kit=15}] posZ

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] store result entity @s Motion[0] double 0.004 run scoreboard players get @s posX

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] store result entity @s Motion[1] double 0.004 run scoreboard players get @s posY

execute as @e[type=item,sort=nearest,tag=sparkleritem,tag=!stop] store result entity @s Motion[2] double 0.004 run scoreboard players get @s posZ

tag @e[type=item,tag=sparkleritem] add stop

scoreboard players set @s sparklerTimer 80

tag @s remove sparklerupgrade

tag @s remove sparklerbigupgrade

function commands:replace/sparkler_replace


