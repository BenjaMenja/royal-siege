summon minecraft:creeper ^ ^1 ^1 {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["explosiveCharge"]}

playsound royalsiege:abilities.explosive_charge master @a[distance=..10] ~ ~ ~ 1 1

tag @s add exCharge

effect give @s resistance 1 3 true

scoreboard players set @s exCharge 300