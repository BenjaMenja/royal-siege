execute as @e[type=ender_pearl,limit=1,tag=!found] store result score @s UUID run data get entity @s Owner[0]

execute if score @e[type=ender_pearl,limit=1,tag=!found] UUID = @s UUID run tag @s add warping

tag @e[type=ender_pearl,limit=1,tag=!found] add found