kill @e[type=armor_stand,limit=1,distance=..3,sort=nearest,tag=smartDrone]

kill @e[type=item,limit=1,distance=..3,sort=nearest,tag=smartDrone]

tellraw @s {"text":"One of your drones has been destroyed!","color":"red"}

scoreboard players reset @s droneDamage

scoreboard players remove @s numDrones 1

execute unless entity @e[type=armor_stand,tag=smartDrone,distance=..3] run tag @s remove hasSmartDrone