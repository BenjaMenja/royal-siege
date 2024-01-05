execute unless score @s outrageKill matches 1.. run function commands:attributes/adds/add_outrage_slow

execute unless score @s outrageKill matches 1.. run function commands:attributes/adds/add_outrage_atkdmg

item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:3801175},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-699159456,1776829655,-1588879616,969981986],Slot:"legs"}]} 1

tag @s remove outrage

scoreboard players reset @s outrageTimer

scoreboard players reset @s outrageKill