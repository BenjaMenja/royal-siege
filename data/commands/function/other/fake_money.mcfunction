execute at @s[team=Blue,nbt={Inventory:[{components:{"minecraft:custom_data":{fakemoneyred:1b}}}]}] run summon fireball ~ ~0.5 ~ {CustomNameVisible:0b,ExplosionPower:3,Tags:["fmm"],Motion:[0.0,-1.0,0.0]}

execute at @s[team=Red,nbt={Inventory:[{components:{"minecraft:custom_data":{fakemoneyblue:1b}}}]}] run summon fireball ~ ~0.5 ~ {CustomNameVisible:0b,ExplosionPower:3,Tags:["fmm"],Motion:[0.0,-1.0,0.0]}

clear @s[team=Red] gold_ingot[custom_data~{fakemoneyblue:1b}]

clear @s[team=Blue] gold_ingot[custom_data~{fakemoneyred:1b}]

advancement revoke @s only commands:pickup_fake_money