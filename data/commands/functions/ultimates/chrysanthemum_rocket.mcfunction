execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {NoGravity:1b,HasVisualFire:1b,Health:1000,PickupDelay:32767,Invulnerable:1b,Tags:["chrysanthemum_projectile","redProj","ultimateProj"],Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:firework_explosion":{shape:"large_ball",colors:[I;16711680,16753152]}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {NoGravity:1b,HasVisualFire:1b,Health:1000,PickupDelay:32767,Invulnerable:1b,Tags:["chrysanthemum_projectile","blueProj","ultimateProj"],Item:{id:"minecraft:firework_star",count:1,components:{"minecraft:firework_explosion":{shape:"large_ball",colors:[I;16711680,16753152]}}}}

execute at @s run playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 1.2

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=chrysanthemum_projectile,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=chrysanthemum_projectile,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=chrysanthemum_projectile,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=chrysanthemum_projectile,tag=!stop] at @s run scoreboard players operation @s posX -= @a[tag=chrysanthemumLaunch,limit=1,sort=nearest] posX

execute as @e[tag=chrysanthemum_projectile,tag=!stop] at @s run scoreboard players operation @s posY -= @a[tag=chrysanthemumLaunch,limit=1,sort=nearest] posY

execute as @e[tag=chrysanthemum_projectile,tag=!stop] at @s run scoreboard players operation @s posZ -= @a[tag=chrysanthemumLaunch,limit=1,sort=nearest] posZ

execute as @e[tag=chrysanthemum_projectile,tag=!stop] store result entity @s Motion[0] double 0.002 run scoreboard players get @s posX

execute as @e[tag=chrysanthemum_projectile,tag=!stop] store result entity @s Motion[1] double 0.002 run scoreboard players get @s posY

execute as @e[tag=chrysanthemum_projectile,tag=!stop] store result entity @s Motion[2] double 0.002 run scoreboard players get @s posZ

tag @e[tag=chrysanthemum_projectile] add stop

scoreboard players set @s RSAttr.CShellDownGravity 0

clear @s carrot[custom_data~{chrysanthemumshell:1b}]