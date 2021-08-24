summon minecraft:fireball ~ ~ ~ {ExplosionPower:4,power:[0.0,-1.0,0.0],Tags:["fm","meteor"]}

execute as @e[tag=meteor,tag=!stop] at @e[tag=mShowerAbove,sort=nearest,limit=1] run spreadplayers ~ ~ 1 10 false @s

execute as @e[tag=meteor,tag=!stop] at @s run teleport @s ~ ~20 ~

tag @e[tag=meteor] add stop

scoreboard players reset @s mShowerTimer