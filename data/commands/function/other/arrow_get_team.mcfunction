execute store result score #uuid1 UUID run data get entity @s Owner[0]

execute store result score #uuid2 UUID run data get entity @s Owner[1]

execute store result score #uuid3 UUID run data get entity @s Owner[2]

execute store result score #uuid4 UUID run data get entity @s Owner[3]

scoreboard players operation #finaluuid UUID += #uuid1 UUID

scoreboard players operation #finaluuid UUID += #uuid2 UUID

scoreboard players operation #finaluuid UUID += #uuid3 UUID

scoreboard players operation #finaluuid UUID += #uuid4 UUID

execute as @a[scores={useBow=1..}] run function commands:other/player_get_uuid

execute if score @a[scores={useBow=1..},limit=1,team=Red] UUID = #finaluuid UUID run tag @s add redProj

execute if score @a[scores={useBow=1..},limit=1,team=Blue] UUID = #finaluuid UUID run tag @s add blueProj

execute if score @a[scores={Kit=5,useBow=1..},limit=1,tag=wrenched] UUID = #finaluuid UUID run data merge entity @s {PierceLevel:99b}

execute as @a[scores={useCrossbow=1..}] run function commands:other/player_get_uuid

execute if score @a[scores={useCrossbow=1..},limit=1,team=Red] UUID = #finaluuid UUID run tag @s add redProj

execute if score @a[scores={useCrossbow=1..},limit=1,team=Blue] UUID = #finaluuid UUID run tag @s add blueProj

tag @s[nbt={damage:52.5d}] add ultimateProj

scoreboard players reset #uuid1 UUID

scoreboard players reset #uuid2 UUID

scoreboard players reset #uuid3 UUID

scoreboard players reset #uuid4 UUID

scoreboard players reset #finaluuid UUID

tag @s add getTeam

