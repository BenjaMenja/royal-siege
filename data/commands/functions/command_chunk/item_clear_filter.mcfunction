execute as @e[type=item] store result entity @s Air short 1 run time query gametime

scoreboard players set @e[type=item] ItemKill 1

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{redhealingfruit:1b}}}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{bluehealingfruit:1b}}}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishcannonitemred:1b}}}}] ItemKill 2

scoreboard players set @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fishcannonitemblue:1b}}}}] ItemKill 2

scoreboard players set @e[type=item,tag=fishCannon] ItemKill 2

scoreboard players set @e[type=item,tag=squidzooka] ItemKill 2

scoreboard players set @e[type=item,tag=egg] ItemKill 2

scoreboard players set @e[type=item,tag=dinnerItemRed] ItemKill 2

scoreboard players set @e[type=item,tag=dinnerItemBlue] ItemKill 2

scoreboard players set @e[type=item,tag=cCannonItem] ItemKill 2

scoreboard players set @e[type=item,tag=systemReboot] ItemKill 2

scoreboard players set @e[type=item,tag=hook] ItemKill 2

scoreboard players set @e[type=item,tag=pCard] ItemKill 2

scoreboard players set @e[type=item,tag=smartDrone] ItemKill 2

scoreboard players set @e[type=item,tag=smartDroneLaser] ItemKill 2

scoreboard players set @e[type=item,tag=sparkleritem] ItemKill 2

scoreboard players set @e[type=item,tag=blazingspeedbomb] ItemKill 2

scoreboard players set @e[type=item,tag=chrysanthemum_projectile] ItemKill 2

scoreboard players set @e[type=item,tag=shockGrenade] ItemKill 2

execute as @e[type=item,tag=!processed,scores={ItemKill=1}] run data modify entity @s Owner set from entity @s Thrower

execute as @e[type=item,tag=!processed,scores={ItemKill=1}] run data modify entity @s PickupDelay set value 0

tag @e[type=item] add processed

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gunblade:1b}}}}]

kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}}]

kill @e[type=item,nbt={Item:{id:"minecraft:diamond_horse_armor"}}]

scoreboard players add @e[type=item,scores={ItemKill=1}] Timer 1