tag @s add arcaneSphereEnd

execute as @a if score @s UUID = @e[type=item,tag=arcaneSphereEnd,limit=1] UUID run scoreboard players set @s arcaneSphereTimer 400

kill @s