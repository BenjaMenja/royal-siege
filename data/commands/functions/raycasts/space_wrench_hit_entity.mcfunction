scoreboard players set #hitentity ray.wrench 1
execute at @s run particle dust 0.000 0.031 1.000 1 ~ ~ ~ 0.5 0.5 0.5 0 10 normal
tellraw @s [{"text":"You received an augment from ","color":"aqua"},{"selector":"@a[tag=wrenchUser]"},{"text":"!"}]
tellraw @a[tag=wrenchUser] [{"text":"You augmented ","color":"aqua"},{"selector":"@s"},{"text":"!"}]
scoreboard players set @a[tag=wrenchUser] wrenchTimer 600
tag @a[tag=wrenchUser] remove wrenching

#Augments

scoreboard players set @s[scores={Kit=1}] exCharge 1

scoreboard players set @s[scores={Kit=2},tag=!upgraded] dashcharge 361

scoreboard players set @s[scores={Kit=2},tag=upgraded] dashcharge 301

execute if entity @s[scores={Kit=3},team=Red] as @e[type=skeleton,tag=turret,team=Red] run data merge entity @s {Health:25f}

execute if entity @s[scores={Kit=3},team=Blue] as @e[type=skeleton,tag=turret,team=Blue] run data merge entity @s {Health:25f}

tag @s[scores={Kit=4}] add wrenched

tag @s[scores={Kit=5}] add wrenched

scoreboard players add @s[scores={Kit=6}] LightningTimer 480

tag @s[scores={Kit=7}] add wrenched

tag @s[scores={Kit=8}] add wrenched

execute if score @s Kit matches 9 run function commands:attributes/adds/add_poseidon_augment_atkdmg

item replace entity @s[scores={Kit=10},tag=!upgraded] hotbar.8 with gunpowder{CustomModelData:14,display:{Name:'{"text":"Gunblade Ammo","color":"gray","italic":false}',Lore:['{"text":"Ammo for the Gunblade."}']},gunbladeammo:1b,Enchantments:[{}]} 15

item replace entity @s[scores={Kit=10},tag=upgraded] hotbar.8 with gunpowder{CustomModelData:14,display:{Name:'{"text":"Gunblade Ammo","color":"gray","italic":false}',Lore:['{"text":"Ammo for the Gunblade."}']},gunbladeammo:1b,Enchantments:[{}]} 20

scoreboard players set @s[scores={Kit=11}] damagePan 300

tag @s[scores={Kit=12}] add wrenched

scoreboard players set @s[scores={Kit=13}] pCardsTimer 1

scoreboard players set @s[scores={Kit=15}] blazingSpeedTimer 1

scoreboard players set @s[scores={Kit=15}] sparklerTimer 1