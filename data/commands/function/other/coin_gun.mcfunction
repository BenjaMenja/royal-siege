execute at @s[team=Red] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["coinBulletRed","coinBullet","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":148}}}

execute at @s[team=Red] anchored eyes run summon item ^0.05 ^ ^1 {Health:1000,PickupDelay:32767,Tags:["coinBulletRed","coinBullet","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":148}}}

execute at @s[team=Red] anchored eyes run summon item ^-0.05 ^ ^1 {Health:1000,PickupDelay:32767,Tags:["coinBulletRed","coinBullet","redProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":148}}}

execute at @s[team=Blue] anchored eyes run summon item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["coinBulletBlue","coinBullet","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":148}}}

execute at @s[team=Blue] anchored eyes run summon item ^0.05 ^ ^1 {Health:1000,PickupDelay:32767,Tags:["coinBulletBlue","coinBullet","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":148}}}

execute at @s[team=Blue] anchored eyes run summon item ^-0.05 ^ ^1 {Health:1000,PickupDelay:32767,Tags:["coinBulletBlue","coinBullet","blueProj"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":148}}}

execute as @e[tag=coinBullet] run data modify entity @s Owner set from entity @a[tag=coinGun,limit=1] UUID

execute at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 1

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=coinBullet,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=coinBullet,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=coinBullet,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=coinBullet,tag=!stop] run scoreboard players operation @s posX -= @a[tag=coinGun,limit=1] posX

execute as @e[tag=coinBullet,tag=!stop] run scoreboard players operation @s posY -= @a[tag=coinGun,limit=1] posY

execute as @e[tag=coinBullet,tag=!stop] run scoreboard players operation @s posZ -= @a[tag=coinGun,limit=1] posZ

execute as @e[tag=coinBullet,tag=!stop] store result entity @s Motion[0] double 0.003 run scoreboard players get @s posX

execute as @e[tag=coinBullet,tag=!stop] store result entity @s Motion[1] double 0.003 run scoreboard players get @s posY

execute as @e[tag=coinBullet,tag=!stop] store result entity @s Motion[2] double 0.003 run scoreboard players get @s posZ

tag @e[tag=coinBullet] add stop

tag @s remove coinGun

scoreboard players set @s coinGunTimer 200

scoreboard players remove @s Money 100