execute at @s[team=Red] anchored eyes run summon minecraft:fireball ^ ^ ^1 {HasVisualFire:0b,ExplosionPower:3b,Tags:["asteroid","redProj"],power:[0.0,0.0,0.0],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Age:-2147483647,WaitTime:-2147483647,Tags:["asteroidLand"]}],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":172}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:fireball ^ ^ ^1 {HasVisualFire:0b,ExplosionPower:3b,Tags:["asteroid","blueProj"],power:[0.0,0.0,0.0],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Age:-2147483647,WaitTime:-2147483647,Tags:["asteroidLand"]}],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,components:{"minecraft:custom_model_data":172}}}

execute as @e[tag=asteroid] run data modify entity @s Owner set from entity @a[tag=asteroidShooter,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=asteroid,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=asteroid,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=asteroid,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=asteroid,tag=!stop] run scoreboard players operation @s posX -= @a[tag=asteroidShooter,limit=1] posX

execute as @e[tag=asteroid,tag=!stop] run scoreboard players operation @s posY -= @a[tag=asteroidShooter,limit=1] posY

execute as @e[tag=asteroid,tag=!stop] run scoreboard players operation @s posZ -= @a[tag=asteroidShooter,limit=1] posZ

execute as @e[tag=asteroid,tag=!stop] store result entity @s power[0] double 0.0003 run scoreboard players get @s posX

execute as @e[tag=asteroid,tag=!stop] store result entity @s power[1] double 0.0003 run scoreboard players get @s posY

execute as @e[tag=asteroid,tag=!stop] store result entity @s power[2] double 0.0003 run scoreboard players get @s posZ

tag @e[tag=asteroid] add stop

tag @s remove asteroidShooter

scoreboard players set @s asteroidTimer 320