effect give @s speed 8 1 true

item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:3801175},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-699159456,1776829655,-1588879616,969981986],Slot:"legs"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.3,Operation:1,UUID:[I;1725336408,-72922885,-1708587718,-1855327877],Slot:"legs"}]} 1

execute at @s run playsound entity.ender_dragon.growl master @a[distance=..10] ~ ~ ~ 1 1.8

execute at @s run particle minecraft:angry_villager ~ ~ ~ 0.85 0.85 0.85 1 10

tag @s remove outrage

tp @e[type=bat,tag=outragered] ~ -100 ~

tp @e[type=bat,tag=outrageblue] ~ -100 ~