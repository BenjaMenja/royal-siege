summon minecraft:fireball ~ ~ ~ {ExplosionPower:4,Motion:[0.0,-10.0,0.0],Tags:["fm","meteor"],acceleration_power:1d}

execute as @e[tag=meteor,tag=!stop] at @e[tag=mShowerAbove,sort=nearest,limit=1] run spreadplayers ~ ~ 1 10 false @s

execute as @e[tag=meteor,tag=!stop] at @s run teleport @s ~ ~20 ~

execute as @e[type=fireball,tag=meteor,tag=!stop] run data merge entity @s {Motion:[0.0,-10.0,0.0]}

tag @e[tag=meteor] add stop

scoreboard players reset @s mShowerTimer