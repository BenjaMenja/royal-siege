summon minecraft:snowball ^ ^ ^1 {Motion:[0.0,0.0,0.0],Tags:["snowball","launcher"],Item:{id:"minecraft:poppy",Count:1b}}

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=launcher,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=launcher,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=launcher,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[sort=nearest,tag=launcher,tag=!stop] posX -= @s posX

scoreboard players operation @e[sort=nearest,tag=launcher,tag=!stop] posY -= @s posY

scoreboard players operation @e[sort=nearest,tag=launcher,tag=!stop] posZ -= @s posZ

execute as @e[sort=nearest,tag=launcher,tag=!stop] store result entity @s Motion[0] double 0.0017 run scoreboard players get @s posX

execute as @e[sort=nearest,tag=launcher,tag=!stop] store result entity @s Motion[1] double 0.0017 run scoreboard players get @s posY

execute as @e[sort=nearest,tag=launcher,tag=!stop] store result entity @s Motion[2] double 0.0017 run scoreboard players get @s posZ

tag @e[type=snowball,tag=launcher,tag=!stop] add stop

ride @s mount @e[type=snowball,tag=launcher,limit=1]