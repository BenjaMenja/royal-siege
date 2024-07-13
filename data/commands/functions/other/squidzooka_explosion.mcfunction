summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,Tags:["squidExplosion"]}

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"dust",color:[0.000,0.000,0.000],scale:1},ReapplicationDelay:20,Radius:5f,RadiusPerTick:-0.05f,RadiusOnUse:0f,Duration:32767,DurationOnUse:0,Age:1,WaitTime:0,potion_contents:{custom_color:0,custom_effects:[{id:"minecraft:blindness",amplifier:0,duration:100,show_particles:0b},{id:"minecraft:night_vision",amplifier:0,duration:100,show_particles:0b}]},Tags:["inkCloud"]}

tp @e[type=squid,tag=squidzooka,limit=1,sort=nearest,distance=..3] ~ -200 ~

tp @s ~ -200 ~