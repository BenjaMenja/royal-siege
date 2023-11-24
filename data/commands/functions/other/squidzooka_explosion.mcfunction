summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,Tags:["squidExplosion"]}

summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.000 0.000 0.000 1",ReapplicationDelay:20,Radius:5f,RadiusPerTick:-0.05f,RadiusOnUse:0f,Duration:32767,DurationOnUse:0,Age:1,WaitTime:0,Color:0,Tags:["inkCloud"],effects:[{id:"minecraft:blindness",amplifier:0b,duration:100,show_particles:0b},{id:"minecraft:night_vision",amplifier:0b,duration:100,show_particles:0b}]}

tp @e[type=squid,tag=squidzooka,limit=1,sort=nearest,distance=..3] ~ -100 ~

tp @s ~ -100 ~