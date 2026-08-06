tag @p[tag=arcaneSphere] add arcaneSphereRedirect

execute at @p[tag=arcaneSphereRedirect] run summon marker ~ ~ ~ {Tags:["direction"]}

execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function commands:utils/entities/get_motion

data modify entity @s Motion set from storage royalsiege:temporary_storage EntityMotion

execute store result score @s posX run data get entity @s Motion[0] 10000
execute store result score @s posY run data get entity @s Motion[1] 10000
execute store result score @s posZ run data get entity @s Motion[2] 10000