tag @s remove ivAttached

effect clear @s regeneration

kill @n[type=item,tag=ivNeedle,tag=attached]

kill @n[type=armor_stand,tag=ivBase]

execute if entity @s[team=Red] if entity @a[team=Red,scores={Kit=16},distance=..32] run scoreboard players set @a[team=Red,scores={Kit=16}] ivDripTimer 80

execute if entity @s[team=Red] if entity @a[team=Red,scores={Kit=16},distance=32..] run scoreboard players set @a[team=Red,scores={Kit=16}] ivDripTimer 160

execute if entity @s[team=Blue] if entity @a[team=Blue,scores={Kit=16},distance=..32] run scoreboard players set @a[team=Blue,scores={Kit=16}] ivDripTimer 80

execute if entity @s[team=Blue] if entity @a[team=Blue,scores={Kit=16},distance=32..] run scoreboard players set @a[team=Blue,scores={Kit=16}] ivDripTimer 160