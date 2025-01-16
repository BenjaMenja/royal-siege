tag @s remove ivAttached

effect clear @s regeneration

execute at @s[team=Red] run effect clear @p[team=Red,scores={Kit=16}] regeneration

execute at @s[team=Blue] run effect clear @p[team=Blue,scores={Kit=16}] regeneration

kill @n[type=item,tag=ivNeedle,tag=attached]

kill @n[type=armor_stand,tag=ivBase]

execute if entity @s[team=Red] if entity @a[team=Red,scores={Kit=16}] run scoreboard players set @a[team=Red,scores={Kit=16}] ivDripTimer 40

execute if entity @s[team=Blue] if entity @a[team=Blue,scores={Kit=16}] run scoreboard players set @a[team=Blue,scores={Kit=16}] ivDripTimer 40