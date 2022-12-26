tag @s add wizard

execute at @s[tag=!charged,team=Red] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:4,Tags:["WF","fm","redProj"],CustomName:'{"text":"Wizard Fireball"}'}

execute at @s[tag=charged,team=Red] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:5,Tags:["WF","fm","redProj"],CustomName:'{"text":"Wizard Fireball"}'}

execute at @s[tag=!charged,team=Blue] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:4,Tags:["WF","fm","blueProj"],CustomName:'{"text":"Wizard Fireball"}'}

execute at @s[tag=charged,team=Blue] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:5,Tags:["WF","fm","blueProj"],CustomName:'{"text":"Wizard Fireball"}'}

execute as @e[type=fireball,tag=WF] run data modify entity @s Owner set from entity @a[tag=wizard,limit=1] UUID

execute as @a[scores={Kit=6}] anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute as @a[scores={Kit=6}] anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute as @a[scores={Kit=6}] anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

execute as @a[scores={Kit=6}] run scoreboard players add @s posY 1620

execute store result score @e[type=fireball,sort=nearest,limit=1,tag=WF,tag=!stop] posX run data get entity @e[type=fireball,sort=nearest,limit=1,tag=WF,tag=!stop] Pos[0] 1000

execute store result score @e[type=fireball,sort=nearest,limit=1,tag=WF,tag=!stop] posY run data get entity @e[type=fireball,sort=nearest,limit=1,tag=WF,tag=!stop] Pos[1] 1000

execute store result score @e[type=fireball,sort=nearest,limit=1,tag=WF,tag=!stop] posZ run data get entity @e[type=fireball,sort=nearest,limit=1,tag=WF,tag=!stop] Pos[2] 1000

scoreboard players operation @e[type=fireball,tag=WF,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[type=fireball,tag=WF,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[type=fireball,tag=WF,limit=1,tag=!stop] posZ -= @s posZ

execute store result entity @e[type=fireball,tag=WF,limit=1,tag=!stop] direction[0] double 0.0008 run scoreboard players get @e[type=fireball,tag=WF,limit=1,tag=!stop] posX

execute store result entity @e[type=fireball,tag=WF,limit=1,tag=!stop] direction[1] double 0.0008 run scoreboard players get @e[type=fireball,tag=WF,limit=1,tag=!stop] posY

execute store result entity @e[type=fireball,tag=WF,limit=1,tag=!stop] direction[2] double 0.0008 run scoreboard players get @e[type=fireball,tag=WF,limit=1,tag=!stop] posZ

execute store result entity @e[type=fireball,tag=WF,limit=1,tag=!stop] power[0] double 0.0008 run scoreboard players get @e[type=fireball,tag=WF,limit=1,tag=!stop] posX

execute store result entity @e[type=fireball,tag=WF,limit=1,tag=!stop] power[1] double 0.0008 run scoreboard players get @e[type=fireball,tag=WF,limit=1,tag=!stop] posY

execute store result entity @e[type=fireball,tag=WF,limit=1,tag=!stop] power[2] double 0.0008 run scoreboard players get @e[type=fireball,tag=WF,limit=1,tag=!stop] posZ

tag @e[type=fireball,tag=WF] add stop

scoreboard players set @s FireballTimer 120

tag @s remove wizard

tag @s remove charged