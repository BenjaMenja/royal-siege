tag @s add arrowTeam

execute store result score @s UUID run data get entity @s Owner[0]

execute as @a[team=Red] if score @s UUID = @n[type=arrow,tag=arrowTeam] UUID run tag @n[type=arrow,tag=arrowTeam] add redProj

execute as @a[team=Blue] if score @s UUID = @n[type=arrow,tag=arrowTeam] UUID run tag @n[type=arrow,tag=arrowTeam] add blueProj

execute if score @a[scores={Kit=5,useBow=1..},limit=1,tag=wrenched] UUID = @s UUID run data merge entity @s {PierceLevel:99b}

tag @s[nbt={weapon:{components:{"minecraft:enchantments":{levels:{"minecraft:power":100}}}}}] add ultimateProj

scoreboard players reset #uuid1 UUID

scoreboard players reset #uuid2 UUID

scoreboard players reset #uuid3 UUID

scoreboard players reset #uuid4 UUID

scoreboard players reset #finaluuid UUID

tag @s add getTeam

