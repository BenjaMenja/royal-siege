summon minecraft:creeper ^ ^1 ^1 {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["explosiveCharge"]}

playsound royalsiege:abilities.explosive_charge master @a[distance=..10] ~ ~ ~ 1 1

item modify entity @s armor.legs commands:explosive_charge_blast_protection

tag @s add exCharge

scoreboard players set @s exCharge 300