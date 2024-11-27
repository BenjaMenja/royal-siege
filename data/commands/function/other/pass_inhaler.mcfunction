tag @s add passinhaler

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{inhalerred:1b}}}}] as @p[distance=1.5..100,team=Red] run data modify entity @n[tag=passinhaler] Owner set from entity @s UUID

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{inhalerblue:1b}}}}] as @p[distance=1.5..100,team=Blue] run data modify entity @n[tag=passinhaler] Owner set from entity @s UUID

teleport @s[nbt={Item:{components:{"minecraft:custom_data":{inhalerred:1b}}}}] @p[distance=1.5..100,team=Red]

teleport @s[nbt={Item:{components:{"minecraft:custom_data":{inhalerblue:1b}}}}] @p[distance=1.5..100,team=Blue]

tag @s remove passinhaler
