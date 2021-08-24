execute unless entity @a[scores={castleChain=..600}] run fill 11 68 -164 11 68 -100 chain[axis=z] replace air

execute unless entity @a[scores={castleChain=..600}] run fill 7 68 -164 7 68 -100 chain[axis=z] replace air

execute unless entity @a[scores={castleChain=..600}] run tag @s add castleChain

execute unless entity @a[scores={castleChain=..600}] run clear @s carrot_on_a_stick{castlechain:1b} 1

execute unless entity @a[scores={castleChain=..600}] run tellraw @a {"text":"A mysterious chain has appeared on the battlefield!","color":"aqua"}

execute if entity @a[scores={castleChain=..600}] run tellraw @s {"text":"You can't use that yet! A chain already exists!","color":"red"}



