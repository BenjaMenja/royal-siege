execute store result score #currenthealth healthVar run data get entity @s Health
$scoreboard players set #healingamount healthVar $(health)
scoreboard players operation #currenthealth healthVar += #healingamount healthVar
execute store result score #maxhealth healthVar run data get entity @s attributes[{id:"minecraft:max_health"}].base
# tellraw @a {"score":{"name":"#currenthealth","objective":"healthVar"}}
# tellraw @a {"score":{"name":"#maxhealth","objective":"healthVar"}}
$execute if score #currenthealth healthVar <= #maxhealth healthVar run scoreboard players set #healthdifference healthVar $(health)
# tellraw @a {"score":{"name":"#healingamount","objective":"healthVar"}}
# tellraw @a {"score":{"name":"#healthsubtractor","objective":"healthVar"}}
# tellraw @a {"score":{"name":"#healthdifference","objective":"healthVar"}}
execute if score #currenthealth healthVar > #maxhealth healthVar run function commands:other/subtract_health