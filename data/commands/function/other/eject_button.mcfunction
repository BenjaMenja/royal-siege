tag @s add ejecting

execute at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["ejectitem"],Item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{floats:[3]}}}}

execute as @e[type=item,tag=ejectitem] run data modify entity @s Owner set from entity @a[tag=ejecting,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=ejectitem,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=ejectitem,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=ejectitem,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=ejectitem,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=ejectitem,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=ejectitem,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=ejectitem,limit=1,tag=!stop] store result entity @s Motion[0] double 0.0008 run scoreboard players get @s posX

execute as @e[tag=ejectitem,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0008 run scoreboard players get @s posY

execute as @e[tag=ejectitem,limit=1,tag=!stop] store result entity @s Motion[2] double 0.0008 run scoreboard players get @s posZ

ride @s mount @n[type=snowball,tag=ejectitem,tag=!stop]

tag @e[tag=ejectitem] add stop

tag @s remove ejecting

scoreboard players set @s ejectTimer 500

effect give @s resistance 1 3 true

execute anchored eyes positioned ^ ^ ^-0.6 anchored feet run summon creeper ~ ~ ~ {Health:1000f,ExplosionRadius:-1b,Fuse:1,ignited:1b,attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:attack_damage",base:1},{id:"minecraft:attack_knockback",base:8.0}],Tags:["ejectbutton"]}