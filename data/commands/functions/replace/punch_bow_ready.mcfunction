execute store result score #switch activeHotbar run data get entity @s Inventory[{tag:{punchbowitem:1b}}].Slot

execute if score #switch activeHotbar matches 0 run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 1 run item replace entity @s hotbar.1 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 2 run item replace entity @s hotbar.2 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 3 run item replace entity @s hotbar.3 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 4 run item replace entity @s hotbar.4 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 5 run item replace entity @s hotbar.5 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 6 run item replace entity @s hotbar.6 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 7 run item replace entity @s hotbar.7 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches 8 run item replace entity @s hotbar.8 with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

execute if score #switch activeHotbar matches -106 run item replace entity @s weapon.offhand with bow{display:{Name:'{"text":"Punch Bow"}',Lore:['{"text":"A high knockback bow."}']},Unbreakable:1b,punchbow:1b,Enchantments:[{id:"minecraft:punch",lvl:4s},{id:"minecraft:infinity",lvl:1s}]} 1

scoreboard players reset #switch activeHotbar

scoreboard players reset @s pBowTimer