execute if entity @s[tag=TRed] run summon armor_stand ~ ~29 ~ {Invulnerable:1b,Invisible:1b,Tags:["Chest","RedChest"]}

execute if entity @s[tag=TBlue] run summon armor_stand ~ ~29 ~ {Invulnerable:1b,Invisible:1b,Tags:["Chest","BlueChest"]}

execute if entity @s[tag=TRed] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=7}]"},{"text":" uncovered a Treasure Chest!"}]

execute if entity @s[tag=TBlue] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=7}]"},{"text":" uncovered a Treasure Chest!"}]

execute if entity @s[tag=TRed] run scoreboard players add @a[team=Red,scores={Ultimate=7}] ultsUsed 1

execute if entity @s[tag=TBlue] run scoreboard players add @a[team=Blue,scores={Ultimate=7}] ultsUsed 1

tp @s ~ -200 ~