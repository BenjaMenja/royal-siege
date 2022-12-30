teleport @s @s

teleport @s ~ ~1.5 ~

effect give @s resistance 1 3 true

execute anchored eyes positioned ^ ^ ^-0.6 anchored feet run summon creeper ~ ~ ~ {Health:1000f,ExplosionRadius:-1b,Fuse:1,ignited:1b,Attributes:[{Name:"generic.max_health",Base:1000},{Name:"generic.attack_damage",Base:1},{Name:"generic.attack_knockback",Base:8.0}],Tags:["ejectbutton"]}

execute as @e[type=creeper,tag=ejectbutton] at @s run teleport @s ~ ~-0.3 ~

execute as @e[type=creeper,tag=ejectbutton] at @s if block ~ ~ ~ #commands:can_place_on_without_grass run function commands:other/eject_stuck

scoreboard players set @s ejectTimer 600