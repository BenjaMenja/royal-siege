execute store result score @s UUID run data get entity @s Owner[0]

execute if score @a[scores={useBow=1..},limit=1,team=Red] UUID = @s UUID run tag @s add redProj

execute if score @a[scores={useBow=1..},limit=1,team=Blue] UUID = @s UUID run tag @s add blueProj

execute if score @a[scores={Kit=5,useBow=1..},limit=1,tag=wrenched] UUID = @s UUID run data merge entity @s {PierceLevel:99b}

execute if score @a[scores={useCrossbow=1..},limit=1,team=Red] UUID = @s UUID run tag @s add redProj

execute if score @a[scores={useCrossbow=1..},limit=1,team=Blue] UUID = @s UUID run tag @s add blueProj

tag @s[nbt={damage:52.5d}] add ultimateProj

scoreboard players reset #uuid1 UUID

scoreboard players reset #uuid2 UUID

scoreboard players reset #uuid3 UUID

scoreboard players reset #uuid4 UUID

scoreboard players reset #finaluuid UUID

tag @s add getTeam

