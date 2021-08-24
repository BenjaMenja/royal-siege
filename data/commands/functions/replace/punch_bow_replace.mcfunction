execute store result score #switch activeHotbar run data get entity @s Inventory[{tag:{punchbow:1b}}].Slot

execute if score #switch activeHotbar matches 0 run item replace entity @s hotbar.0 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 1 run item replace entity @s hotbar.1 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 2 run item replace entity @s hotbar.2 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 3 run item replace entity @s hotbar.3 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 4 run item replace entity @s hotbar.4 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 5 run item replace entity @s hotbar.5 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 6 run item replace entity @s hotbar.6 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 7 run item replace entity @s hotbar.7 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches 8 run item replace entity @s hotbar.8 with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

execute if score #switch activeHotbar matches -106 run item replace entity @s weapon.offhand with minecraft:gunpowder{display:{Name:'{"text":"Punch Bow Placeholder","color":"gray","italic":false}',Lore:['{"text":"Don\'t worry! Your punch bow will be back shortly."}']},punchbowitem:1b} 1

scoreboard players reset #switch activeHotbar