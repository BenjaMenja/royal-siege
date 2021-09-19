summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,Tags:["squidExplosion"]}

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dust",ReapplicationDelay:20,Radius:5f,RadiusPerTick:-0.05f,RadiusOnUse:0f,Duration:32767,DurationOnUse:0f,Age:1,WaitTime:0,Color:0,Effects:[{Id:15b,Amplifier:0b,Duration:100,ShowParticles:0b},{Id:16b,Amplifier:0b,Duration:100,ShowParticles:0b}]}

tp @e[type=squid,tag=squidzooka,limit=1,sort=nearest,distance=..3] ~ -100 ~

tp @s ~ -100 ~