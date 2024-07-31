loot spawn ~ ~1 ~ loot commands:other/asteroid_shard

loot spawn ~0.25 ~1 ~ loot commands:other/asteroid_shard

loot spawn ~-0.25 ~1 ~ loot commands:other/asteroid_shard

loot spawn ~ ~1 ~0.25 loot commands:other/asteroid_shard

loot spawn ~ ~1 ~-0.25 loot commands:other/asteroid_shard

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{asteroidshard:1b}}}}] run data merge entity @s {Health:1000,PickupDelay:32767,Tags:["asteroidshard"]}

summon creeper ~ ~ ~ {ExplosionRadius:4b,ignited:1b,Fuse:2}

tag @a[distance=..5,scores={Message=1..}] add asteroiddeath

kill @s