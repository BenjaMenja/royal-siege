kill @e[type=item_frame,limit=1,sort=nearest,distance=..1]

summon minecraft:creeper ~ ~0.5 ~ {ExplosionRadius:4b,ignited:1b,Fuse:1b,Invulnerable:1b,Tags:["powderKeg"]}

tp @e[type=piglin,limit=1,sort=nearest,distance=..1] ~ -200 ~