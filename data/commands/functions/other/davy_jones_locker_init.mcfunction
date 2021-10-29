execute at @s[tag=LockerRed] run summon armor_stand ~ ~-1.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"lower"}},NoGravity:1b,Time:1}]}

execute at @s[tag=LockerRed] run summon armor_stand ~ ~-0.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"upper"}},NoGravity:1b,Time:1}]}

execute at @s[tag=LockerRed] run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Locker"}',CustomNameVisible:0b,Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b}

execute at @s[tag=LockerBlue] run summon armor_stand ~ ~-1.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"lower"}},NoGravity:1b,Time:1}]}

execute at @s[tag=LockerBlue] run summon armor_stand ~ ~-0.5 ~ {Tags:["davyLocker"],NoGravity:1b,Invulnerable:1b,Invisible:1b,Passengers:[{id:"minecraft:falling_block",Tags:["davyLocker"],BlockState:{Name:"minecraft:iron_door",Properties:{half:"upper"}},NoGravity:1b,Time:1}]}

execute at @s[tag=LockerBlue] run summon armor_stand ~ ~ ~ {CustomName:'{"text":"LockerBlue"}',CustomNameVisible:0b,Invulnerable:1b,Marker:1b,Invisible:1b,NoGravity:1b}

tp @s ~ -100 ~