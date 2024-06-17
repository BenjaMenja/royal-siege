scoreboard players set #hit ray.dRush 1
teleport @s ~ ~ ~
teleport @s ~ ~0.5 ~
execute if block ~ ~ ~ #commands:can_place_on_without_grass run teleport @s ^ ^ ^-0.5
scoreboard players set @s dragonRushTimer 240
execute at @s run playsound entity.ender_dragon.growl master @a[distance=..10] ~ ~ ~ 1 0.8
execute at @s run particle dust{color:[0.467,0.000,1.000],scale:1} ~-0.25 ~-0.25 ~-0.25 0.75 0.75 0.75 1 50 normal

