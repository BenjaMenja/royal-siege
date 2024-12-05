summon minecraft:item_frame ~ ~ ~ {Tags:["powderKeg"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:3b,Item:{id:"minecraft:stone_bricks",count:1,components:{"minecraft:custom_model_data":28}}}

execute if entity @s[tag=powderKegRed] run summon minecraft:piglin ~ ~ ~ {Fire:-1s,NoAI:1b,Silent:1b,Health:20f,Tags:["powderKegRed","powderKeg"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:100000,show_particles:0b}],attributes:[{id:"max_health",base:20}]}

execute if entity @s[tag=powderKegBlue] run summon minecraft:piglin ~ ~ ~ {Fire:-1s,NoAI:1b,Silent:1b,Health:20f,Tags:["powderKegBlue","powderKeg"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:100000,show_particles:0b}],attributes:[{id:"max_health",base:20}]}

tp @s ~ -200 ~