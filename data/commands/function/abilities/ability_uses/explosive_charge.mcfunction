advancement revoke @s only commands:explosive_charge

execute unless score @s exChargeToggle matches 1 run return -1

execute at @s[scores={exCharge=0,Kit=1}] run summon minecraft:creeper ^ ^1 ^1 {ExplosionRadius:-1b,Fuse:1,ignited:1b,Tags:["explosiveCharge"]}

execute at @s[scores={exCharge=0,Kit=1}] run playsound royalsiege:abilities.explosive_charge master @a[distance=..10] ~ ~ ~ 1 1

tag @s[scores={exCharge=0,Kit=1}] add exCharge

effect give @s[scores={exCharge=0,Kit=1}] resistance 1 3 true

scoreboard players set @s[scores={exCharge=0,Kit=1}] exCharge 300

function commands:abilities/ability_uses/explosive_charge_toggle