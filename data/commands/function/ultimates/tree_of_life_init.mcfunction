execute at @s[tag=TreeRed] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["TreeoflifeRed","Treeoflife"]}

execute at @s[tag=TreeRed] run playsound entity.player.levelup master @a[distance=..20] ~ ~ ~ 1 0

execute if entity @s[tag=TreeRed] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=8}]"},{"text":" has grown a tree!"}]

execute as @e[type=bat,tag=TreeBlue] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["TreeoflifeBlue","Treeoflife"]}

execute as @e[type=bat,tag=TreeBlue] at @s run playsound entity.player.levelup master @a[distance=..20] ~ ~ ~ 1 0

execute if entity @e[type=bat,tag=TreeBlue] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=8}]"},{"text":" has grown a tree!"}]

execute if entity @s[tag=TreeRed] run scoreboard players add @a[team=Red,scores={Ultimate=8}] ultsUsed 1

execute if entity @s[tag=TreeBlue] run scoreboard players add @a[team=Blue,scores={Ultimate=8}] ultsUsed 1

tp @s ~ -200 ~