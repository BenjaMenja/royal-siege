execute at @s[team=Blue,nbt={Inventory:[{tag:{fakemoneyred:1b}}]}] run summon fireball ~ ~ ~ {CustomNameVisible:0b,ExplosionPower:3,Tags:["fmm"],power:[0.0,-1.0,0.0]}

execute at @s[team=Red,nbt={Inventory:[{tag:{fakemoneyblue:1b}}]}] run summon fireball ~ ~ ~ {CustomNameVisible:0b,ExplosionPower:3,Tags:["fmm"],power:[0.0,-1.0,0.0]}

clear @s[team=Red] gold_ingot{fakemoneyblue:1b}

clear @s[team=Blue] gold_ingot{fakemoneyred:1b}

advancement revoke @s only commands:pickup_fake_money