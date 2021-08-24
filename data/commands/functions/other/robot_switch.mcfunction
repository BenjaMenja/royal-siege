tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{switch:1b}}]}] add switchpoison

tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{switch:2b}}]}] add switchtoxin

tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{switch:3b}}]}] add switchstasis

tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{switch:4b}}]}] add switchmidas

tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{switch:5b}}]}] add switchexplode

tag @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{switch:6b}}]}] add switchburst

execute store result score #switch activeHotbar run data get entity @s Inventory[{tag:{switchitem:1b}}].Slot

execute as @s[tag=switchpoison] run item modify entity @s weapon.mainhand commands:switch_poison

execute as @s[tag=switchtoxin] run item modify entity @s weapon.mainhand commands:switch_toxin

execute as @s[tag=switchstasis] run item modify entity @s weapon.mainhand commands:switch_stasis

execute as @s[tag=switchmidas] run item modify entity @s weapon.mainhand commands:switch_midas

execute as @s[tag=switchexplode] run item modify entity @s weapon.mainhand commands:switch_explosive

execute as @s[tag=switchburst] run item modify entity @s weapon.mainhand commands:switch_burst

scoreboard players reset #switch activeHotbar

tag @s remove switching

tag @s remove switchpoison

tag @s remove switchtoxin

tag @s remove switchstasis

tag @s remove switchmidas

tag @s remove switchexplode

tag @s remove switchburst