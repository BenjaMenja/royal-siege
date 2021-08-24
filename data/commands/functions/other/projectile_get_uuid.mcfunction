execute store result score #puuid1 UUID run data get entity @s Owner[0]

execute store result score #puuid2 UUID run data get entity @s Owner[1]

execute store result score #puuid3 UUID run data get entity @s Owner[2]

execute store result score #puuid4 UUID run data get entity @s Owner[3]

scoreboard players operation #pfinaluuid UUID += #puuid1 UUID

scoreboard players operation #pfinaluuid UUID += #puuid2 UUID

scoreboard players operation #pfinaluuid UUID += #puuid3 UUID

scoreboard players operation #pfinaluuid UUID += #puuid4 UUID

execute store result score @s UUID run scoreboard players get #pfinaluuid UUID

scoreboard players reset #puuid1 UUID

scoreboard players reset #puuid2 UUID

scoreboard players reset #puuid3 UUID

scoreboard players reset #puuid4 UUID

scoreboard players reset #pfinaluuid UUID