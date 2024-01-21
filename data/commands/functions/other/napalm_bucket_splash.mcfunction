execute anchored eyes run particle minecraft:block honey_block ^ ^ ^3 0.5 0.5 0.5 1 1000

playsound minecraft:item.bucket.fill_lava master @a ~ ~ ~ 1 0.7

execute positioned ^ ^ ^3 if entity @s[team=Red] as @a[team=Blue,distance=..4,predicate=commands:effects/on_fire] run function commands:attributes/adds/add_napalm_bucket_slow

execute positioned ^ ^ ^3 if entity @s[team=Red] as @a[team=Blue,distance=..4,predicate=commands:effects/on_fire] run function commands:attributes/adds/add_napalm_bucket_armor_shred

execute positioned ^ ^ ^3 if entity @s[team=Blue] as @a[team=Red,distance=..4,predicate=commands:effects/on_fire] run function commands:attributes/adds/add_napalm_bucket_slow

execute positioned ^ ^ ^3 if entity @s[team=Blue] as @a[team=Red,distance=..4,predicate=commands:effects/on_fire] run function commands:attributes/adds/add_napalm_bucket_armor_shred

scoreboard players set @s napalmBucketTimer 300