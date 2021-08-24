summon minecraft:item_frame ~ ~ ~ {Tags:["oven"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:3b,Item:{id:"minecraft:stone_bricks",Count:1b,tag:{CustomModelData:134}}}

execute if entity @s[tag=ovenred] run summon minecraft:zombified_piglin ~ ~ ~ {NoAI:1b,Silent:1b,Health:25f,Tags:["ovenred","oven"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25}]}

execute if entity @s[tag=ovenblue] run summon minecraft:zombified_piglin ~ ~ ~ {NoAI:1b,Silent:1b,Health:25f,Tags:["ovenblue","oven"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25}]}

tp @s ~ -100 ~