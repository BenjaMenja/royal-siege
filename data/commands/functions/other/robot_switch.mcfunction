execute if entity @s[predicate=commands:holding/gunblade_burst] run tag @s add switchpoison

execute if entity @s[predicate=commands:holding/gunblade_poison] run tag @s add switchtoxin

execute if entity @s[predicate=commands:holding/gunblade_toxin] run tag @s add switchdarkness

execute if entity @s[predicate=commands:holding/gunblade_darkness] run tag @s add switchmidas

execute if entity @s[predicate=commands:holding/gunblade_midas] run tag @s add switchexplode

execute if entity @s[predicate=commands:holding/gunblade_explosive] run tag @s add switchburst

execute store result score #switch activeHotbar run data get entity @s Inventory[{components:{"minecraft:custom_data":{gunblade:1b}}}].Slot

execute if entity @s[tag=switchpoison] if score #switch activeHotbar matches -106 run item modify entity @s weapon.offhand commands:switch_poison

execute if entity @s[tag=switchtoxin] if score #switch activeHotbar matches -106 run item modify entity @s weapon.offhand commands:switch_toxin

execute if entity @s[tag=switchdarkness] if score #switch activeHotbar matches -106 run item modify entity @s weapon.offhand commands:switch_darkness

execute if entity @s[tag=switchmidas] if score #switch activeHotbar matches -106 run item modify entity @s weapon.offhand commands:switch_midas

execute if entity @s[tag=switchexplode] if score #switch activeHotbar matches -106 run item modify entity @s weapon.offhand commands:switch_explosive

execute if entity @s[tag=switchburst] if score #switch activeHotbar matches -106 run item modify entity @s weapon.offhand commands:switch_burst

execute if entity @s[tag=switchpoison] unless score #switch activeHotbar matches -106 run item modify entity @s weapon.mainhand commands:switch_poison

execute if entity @s[tag=switchtoxin] unless score #switch activeHotbar matches -106 run item modify entity @s weapon.mainhand commands:switch_toxin

execute if entity @s[tag=switchdarkness] unless score #switch activeHotbar matches -106 run item modify entity @s weapon.mainhand commands:switch_darkness

execute if entity @s[tag=switchmidas] unless score #switch activeHotbar matches -106 run item modify entity @s weapon.mainhand commands:switch_midas

execute if entity @s[tag=switchexplode] unless score #switch activeHotbar matches -106 run item modify entity @s weapon.mainhand commands:switch_explosive

execute if entity @s[tag=switchburst] unless score #switch activeHotbar matches -106 run item modify entity @s weapon.mainhand commands:switch_burst

scoreboard players reset #switch activeHotbar

tag @s remove switching

tag @s remove switchpoison

tag @s remove switchtoxin

tag @s remove switchdarkness

tag @s remove switchmidas

tag @s remove switchexplode

tag @s remove switchburst