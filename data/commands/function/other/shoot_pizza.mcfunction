function commands:other/line_of_sight

execute if entity @s[tag=ovenred] if entity @a[tag=inLOS,team=Blue] at @s anchored eyes run summon minecraft:fireball ^ ^ ^ {ExplosionPower:4b,Tags:["pizzared","pizza","redProj"],Item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":136}}}

execute if entity @s[tag=ovenblue] if entity @a[tag=inLOS,team=Red] at @s anchored eyes run summon minecraft:fireball ^ ^ ^ {ExplosionPower:4b,Tags:["pizzablue","pizza","blueProj"],Item:{id:"minecraft:pumpkin_pie",count:1,components:{"minecraft:custom_model_data":136}}}

execute if entity @s[tag=ovenred] unless entity @a[tag=inLOS,team=Blue] at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 2

execute if entity @s[tag=ovenblue] unless entity @a[tag=inLOS,team=Red] at @s run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 2

execute as @e[type=fireball,tag=pizzared] run data modify entity @s Owner set from entity @a[team=Red,limit=1,scores={Kit=11}] UUID

execute as @e[type=fireball,tag=pizzablue] run data modify entity @s Owner set from entity @a[team=Blue,limit=1,scores={Kit=11}] UUID

execute if entity @s[tag=ovenred] as @p[team=Blue,tag=inLOS] store result score @s posX run data get entity @s Pos[0] 1000

execute if entity @s[tag=ovenred] as @p[team=Blue,tag=inLOS] store result score @s posY run data get entity @s Pos[1] 1000

execute if entity @s[tag=ovenred] as @p[team=Blue,tag=inLOS] store result score @s posZ run data get entity @s Pos[2] 1000

execute if entity @s[tag=ovenblue] as @p[team=Red,tag=inLOS] store result score @s posX run data get entity @s Pos[0] 1000

execute if entity @s[tag=ovenblue] as @p[team=Red,tag=inLOS] store result score @s posY run data get entity @s Pos[1] 1000

execute if entity @s[tag=ovenblue] as @p[team=Red,tag=inLOS] store result score @s posZ run data get entity @s Pos[2] 1000

execute if entity @s[tag=ovenred] run scoreboard players add @p[team=Blue,tag=inLOS] posY 1620

execute if entity @s[tag=ovenblue] run scoreboard players add @p[team=Red,tag=inLOS] posY 1620

execute as @e[sort=nearest,limit=1,tag=pizza,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=pizza,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=pizza,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute if entity @s[tag=ovenred] run scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posX -= @p[team=Blue,tag=inLOS] posX

execute if entity @s[tag=ovenred] run scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posY -= @p[team=Blue,tag=inLOS] posY

execute if entity @s[tag=ovenred] run scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posZ -= @p[team=Blue,tag=inLOS] posZ

execute if entity @s[tag=ovenblue] run scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posX -= @p[team=Red,tag=inLOS] posX

execute if entity @s[tag=ovenblue] run scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posY -= @p[team=Red,tag=inLOS] posY

execute if entity @s[tag=ovenblue] run scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posZ -= @p[team=Red,tag=inLOS] posZ

scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posX *= #-1 constant

scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posY *= #-1 constant

scoreboard players operation @e[tag=pizza,limit=1,tag=!stop] posZ *= #-1 constant

execute as @e[tag=pizza,limit=1,tag=!stop] store result entity @s Motion[0] double 0.00007 run scoreboard players get @s posX

execute as @e[tag=pizza,limit=1,tag=!stop] store result entity @s Motion[1] double 0.00007 run scoreboard players get @s posY

execute as @e[tag=pizza,limit=1,tag=!stop] store result entity @s Motion[2] double 0.00007 run scoreboard players get @s posZ

tag @e[tag=pizza] add stop

data modify entity @e[type=item_frame,limit=1,sort=nearest] Item set value {id:"minecraft:stone_bricks",count:1,components:{"minecraft:custom_model_data":135}}

scoreboard players reset @s ovenTimer

tag @a remove inLOS

tag @a remove LOSfound