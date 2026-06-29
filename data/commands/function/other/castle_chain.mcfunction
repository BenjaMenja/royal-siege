#Forest Glen

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:0}}} unless entity @a[scores={castleChain=..600}] run fill 11 68 -164 11 68 -100 iron_chain[axis=z] replace air

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:0}}} unless entity @a[scores={castleChain=..600}] run fill 7 68 -164 7 68 -100 iron_chain[axis=z] replace air

#Winterland

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:1}}} unless entity @a[scores={castleChain=..600}] run fill 60 68 -1027 104 68 -1027 iron_chain[axis=x] replace air

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:1}}} unless entity @a[scores={castleChain=..600}] run fill 55 68 -1076 55 68 -1032 iron_chain[axis=z] replace air

#Colliding Tides

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:2}}} unless entity @a[scores={castleChain=..600}] run fill 29 59 -1986 29 59 -1956 iron_chain[axis=z] replace air

execute if data storage royalsiege:settings {Gamemode:0} if data storage royalsiege:settings {Maps:{Classic:{value:2}}} unless entity @a[scores={castleChain=..600}] run fill 9 59 -1986 9 59 -1956 iron_chain[axis=z] replace air

#Other

execute unless entity @a[scores={castleChain=..600}] run tag @s add castleChain

execute unless entity @a[scores={castleChain=..600}] run clear @s carrot[custom_data~{castlechain:1b}] 1

execute unless entity @a[scores={castleChain=..600}] run tellraw @a {"text":"A mysterious chain has appeared on the battlefield!","color":"aqua"}

execute if entity @a[scores={castleChain=..600}] run tellraw @s {"text":"You can't use that yet! A chain already exists!","color":"red"}



