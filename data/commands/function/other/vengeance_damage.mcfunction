advancement revoke @s only commands:vengeance_damage

execute if entity @s[team=Red,tag=vengeance] run scoreboard players operation @p[team=Red,tag=vengeanceUser] vengeanceTally += @s vengeanceDamage

execute if entity @s[team=Red,tag=vengeance] facing entity @p[team=Red,tag=vengeanceUser] eyes anchored eyes positioned ^ ^ ^ run particle witch ~ ~ ~ ^ ^ ^1000000 0.000005 0

execute if entity @s[team=Blue,tag=vengeance] run scoreboard players operation @p[team=Blue,tag=vengeanceUser] vengeanceTally += @s vengeanceDamage

execute if entity @s[team=Blue,tag=vengeance] facing entity @p[team=Blue,tag=vengeanceUser] eyes anchored eyes positioned ^ ^ ^ run particle witch ~ ~ ~ ^ ^ ^1000000 0.000005 0

scoreboard players reset @s vengeanceDamage