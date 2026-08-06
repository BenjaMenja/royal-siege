tag @s add burningLeap

tag @s add burningLeapTemp

execute at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["burningLeapItem"],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:item_model":"royalsiege:empty"}}}

execute as @e[type=item,tag=burningLeapItem] run data modify entity @s Owner set from entity @a[tag=burningLeapTemp,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=burningLeapItem,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=burningLeapItem,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=burningLeapItem,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=burningLeapItem,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=burningLeapItem,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=burningLeapItem,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=burningLeapItem,limit=1,tag=!stop] store result entity @s Motion[0] double 0.001 run scoreboard players get @s posX

execute as @e[tag=burningLeapItem,limit=1,tag=!stop] store result entity @s Motion[1] double 0.0005 run scoreboard players get @s posY

execute as @e[tag=burningLeapItem,limit=1,tag=!stop] store result entity @s Motion[2] double 0.001 run scoreboard players get @s posZ

ride @s mount @n[type=snowball,tag=burningLeapItem,tag=!stop]

tag @e[tag=burningLeapItem] add stop

tag @s remove burningLeapTemp

scoreboard players set @s burningLeapTimer 240