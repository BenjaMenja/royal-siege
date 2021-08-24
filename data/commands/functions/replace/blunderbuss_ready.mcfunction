execute store result score #switch activeHotbar run data get entity @s Inventory[{tag:{blunderbuss:1b}}].Slot

execute if score #switch activeHotbar matches 0 run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 1 run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 2 run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 3 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 4 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 5 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 6 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 7 run item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

execute if score #switch activeHotbar matches 8 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b,Enchantments:[{}]} 1

scoreboard players reset #switch activeHotbar