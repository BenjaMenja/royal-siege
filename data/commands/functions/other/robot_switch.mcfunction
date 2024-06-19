execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{switch:1b}] run tag @s add switchpoison

execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{switch:2b}] run tag @s add switchtoxin

execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{switch:3b}] run tag @s add switchstasis

execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{switch:4b}] run tag @s add switchmidas

execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{switch:5b}] run tag @s add switchexplode

execute if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{switch:6b}] run tag @s add switchburst

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