kill @e[type=armor_stand,distance=..3,tag=smartDrone]

kill @e[type=item,distance=..3,tag=smartDrone]

scoreboard players reset @s droneDamage

scoreboard players set @s numDrones 0

tag @s remove hasSmartDrone