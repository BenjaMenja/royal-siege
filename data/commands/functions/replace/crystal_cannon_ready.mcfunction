execute store result score #switch activeHotbar run data get entity @s Inventory[{tag:{crystalcannon:1b}}].Slot

execute if score #switch activeHotbar matches 0 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 1 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 2 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 3 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 4 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 5 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 6 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 7 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 8 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b,Enchantments:[{}]} 1

scoreboard players reset #switch activeHotbar