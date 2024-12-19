execute if entity @s[predicate=!commands:in_tdm_gates] run summon lightning_bolt

execute if entity @s[tag=shockGrenadeRed] run scoreboard players set @a[team=Blue,distance=..3] RSAttr.Rooted 60

execute if entity @s[tag=shockGrenadeRed] as @a[team=Blue,distance=..3] run function commands:attributes/adds/add_rooted

execute if entity @s[tag=shockGrenadeBlue] run scoreboard players set @a[team=Red,distance=..3] RSAttr.Rooted 60

execute if entity @s[tag=shockGrenadeBlue] as @a[team=Red,distance=..3] run function commands:attributes/adds/add_rooted

particle minecraft:electric_spark ~ ~ ~ 1 1 1 1 100

execute at @s run playsound entity.bee.death master @a[distance=..5] ~ ~ ~ 1 2 0.1

kill @s