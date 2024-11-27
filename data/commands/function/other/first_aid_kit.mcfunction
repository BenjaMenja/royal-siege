scoreboard players set @s c.heal 40000

function custom_heal:apply_heal

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2

execute if entity @s[team=Red] run kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{firstaidred:1b}}}}]

execute if entity @s[team=Blue] run kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{firstaidblue:1b}}}}]