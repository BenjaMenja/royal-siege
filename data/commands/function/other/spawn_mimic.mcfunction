execute if entity @s[tag=mimicred] run summon minecraft:piglin ~ ~ ~ {NoAI:1b,Silent:1b,Health:20f,Tags:["mimicred","mimic"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:100000,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:20}]}

execute if entity @s[tag=mimicblue] run summon minecraft:piglin ~ ~ ~ {NoAI:1b,Silent:1b,Health:20f,Tags:["mimicblue","mimic"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:100000,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:20}]}

execute if entity @s[tag=mimicred] run summon marker ~ ~ ~ {Tags:["mimic","mimicred"]}

execute if entity @s[tag=mimicblue] run summon marker ~ ~ ~ {Tags:["mimic","mimicblue"]}

setblock ~ ~ ~ chest[facing=north]{Lock:"mrdoordash"}

kill @s