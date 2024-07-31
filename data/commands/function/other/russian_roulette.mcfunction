execute store result score #rng RNG run random roll 1..6

execute if score #rng RNG matches 1 run tag @s add rouletteFire

execute at @s[team=Red,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^ ^ ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","redProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Red,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^0.07 ^ ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","redProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Red,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^ ^0.07 ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","redProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Red,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^-0.07 ^ ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","redProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Red,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^ ^-0.07 ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","redProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Blue,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^ ^ ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","blueProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Blue,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^0.07 ^ ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","blueProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Blue,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^ ^0.07 ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","blueProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Blue,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^-0.07 ^ ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","blueProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute at @s[team=Blue,tag=rouletteFire] anchored eyes run summon minecraft:arrow ^ ^-0.07 ^1 {damage:8.0d,PierceLevel:3b,Tags:["rouletteBullet","blueProj"],SoundEvent:"entity.zombie.break_wooden_door"}

execute if entity @s[tag=rouletteFire] run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~ 1 1.3

execute unless entity @s[tag=rouletteFire] run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 2

execute as @e[tag=rouletteBullet] run data modify entity @s Owner set from entity @a[tag=rouletteShot,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=rouletteBullet,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=rouletteBullet,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=rouletteBullet,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=rouletteBullet,tag=!stop] run scoreboard players operation @s posX -= @a[tag=rouletteFire,limit=1] posX

execute as @e[tag=rouletteBullet,tag=!stop] run scoreboard players operation @s posY -= @a[tag=rouletteFire,limit=1] posY

execute as @e[tag=rouletteBullet,tag=!stop] run scoreboard players operation @s posZ -= @a[tag=rouletteFire,limit=1] posZ

execute as @e[tag=rouletteBullet,tag=!stop] store result entity @s Motion[0] double 0.003 run scoreboard players get @s posX

execute as @e[tag=rouletteBullet,tag=!stop] store result entity @s Motion[1] double 0.003 run scoreboard players get @s posY

execute as @e[tag=rouletteBullet,tag=!stop] store result entity @s Motion[2] double 0.003 run scoreboard players get @s posZ

tag @e[tag=rouletteBullet] add stop

tag @s remove rouletteFire

tag @s remove rouletteShot

scoreboard players set @s rouletteTimer 100

scoreboard players reset #rng RNG