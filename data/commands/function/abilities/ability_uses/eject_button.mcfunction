function commands:utils/entities/apply_impulse {type:"commands:impulse_forward",level:2}

scoreboard players set @s ejectTimer 500

effect give @s resistance 1 3 true

execute anchored eyes positioned ^ ^ ^-0.6 anchored feet run summon creeper ~ ~ ~ {Health:1000f,ExplosionRadius:-1b,Fuse:1,ignited:1b,attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:attack_damage",base:1},{id:"minecraft:attack_knockback",base:8.0}],Tags:["ejectbutton"]}

tag @s add hasImpulse