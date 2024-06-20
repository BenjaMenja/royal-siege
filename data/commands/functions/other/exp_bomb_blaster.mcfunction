#Red Proj.

execute at @s[team=Red] anchored eyes run summon experience_bottle ^0.05 ^ ^1 {NoGravity:1b,Tags:["expBottle","redProj"]}

execute at @s[team=Red] anchored eyes run summon experience_bottle ^-0.05 ^ ^1 {NoGravity:1b,Tags:["expBottle","redProj"]}

execute at @s[team=Red] anchored eyes run summon experience_bottle ^ ^-0.05 ^1 {NoGravity:1b,Tags:["expBottle","redProj"]}

#Blue Proj.

execute at @s[team=Blue] anchored eyes run summon experience_bottle ^0.05 ^ ^1 {NoGravity:1b,Tags:["expBottle","blueProj"]}

execute at @s[team=Blue] anchored eyes run summon experience_bottle ^-0.05 ^ ^1 {NoGravity:1b,Tags:["expBottle","blueProj"]}

execute at @s[team=Blue] anchored eyes run summon experience_bottle ^ ^-0.05 ^1 {NoGravity:1b,Tags:["expBottle","blueProj"]}

#Other Proj stuff

tag @s add shooting

execute as @e[type=experience_bottle,tag=expBottle] run data modify entity @s Owner set from entity @s UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=expBottle,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=expBottle,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=expBottle,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[sort=nearest,tag=expBottle,tag=!stop] run scoreboard players operation @s posX -= @a[limit=1,tag=shooting] posX

execute as @e[sort=nearest,tag=expBottle,tag=!stop] run scoreboard players operation @s posY -= @a[limit=1,tag=shooting] posY

execute as @e[sort=nearest,tag=expBottle,tag=!stop] run scoreboard players operation @s posZ -= @a[limit=1,tag=shooting] posZ

execute as @e[tag=expBottle,tag=!stop] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s posX

execute as @e[tag=expBottle,tag=!stop] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s posY

execute as @e[tag=expBottle,tag=!stop] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s posZ

tag @e[tag=expBottle] add stop

tag @s remove shooting

scoreboard players set @s expBombTimer 500