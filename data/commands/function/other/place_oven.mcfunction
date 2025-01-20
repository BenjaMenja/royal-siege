summon minecraft:item_frame ~ ~ ~ {Tags:["oven"],Invulnerable:1b,Invisible:1b,Fixed:1b,Facing:3b,Item:{id:"minecraft:stone_bricks",count:1,components:{"minecraft:custom_model_data":{floats:[134]}}}}

execute if entity @s[tag=ovenred] run summon minecraft:zombified_piglin ~ ~ ~ {Team:"Red",NoAI:1b,Silent:1b,Health:25f,Tags:["ovenred","oven"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:100000,show_particles:0b}],attributes:[{id:"max_health",base:25}]}

execute if entity @s[tag=ovenblue] run summon minecraft:zombified_piglin ~ ~ ~ {Team:"Blue",NoAI:1b,Silent:1b,Health:25f,Tags:["ovenblue","oven"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:100000,show_particles:0b}],attributes:[{id:"max_health",base:25}]}

tp @s ~ -200 ~