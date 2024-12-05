execute if entity @s[team=Red] run function commands:other/custom_heal {health:4,ult_charge_receiver:"@a[team=Red,scores={Kit=16}]"}

execute if entity @s[team=Blue] run function commands:other/custom_heal {health:4,ult_charge_receiver:"@a[team=Blue,scores={Kit=16}]"}

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

execute if entity @s[team=Red] run kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{firstaidred:1b}}}}]

execute if entity @s[team=Blue] run kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{firstaidblue:1b}}}}]