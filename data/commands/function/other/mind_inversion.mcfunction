execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{mindinversionred:1b}}}}] run team join Red @n[distance=..3,predicate=!commands:necromancer_cant_target,team=Blue]

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{mindinversionblue:1b}}}}] run team join Blue @n[distance=..3,predicate=!commands:necromancer_cant_target,team=Red]

particle white_smoke ~ ~ ~ 0.5 0.5 0.5 1 20

kill @s
