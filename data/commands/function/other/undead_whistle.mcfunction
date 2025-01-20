tag @s add undeadwhistle

execute store result score @s posX run data get entity @s Pos[0]

scoreboard players add @s posX 2

execute store result score @s posY run data get entity @s Pos[1]

scoreboard players add @s posY 2

execute store result score @s posZ run data get entity @s Pos[2]

scoreboard players add @s posZ 2

execute store result storage royalsiege:main xpos double 1 run scoreboard players get @s posX

execute store result storage royalsiege:main ypos double 1 run scoreboard players get @s posY

execute store result storage royalsiege:main zpos double 1 run scoreboard players get @s posZ

execute if entity @s[team=Red] as @e[predicate=!commands:necromancer_cant_target,distance=..25,team=Red] run function commands:other/undead_whistle_warp with storage royalsiege:main

execute if entity @s[team=Blue] as @e[predicate=!commands:necromancer_cant_target,distance=..25,team=Blue] run function commands:other/undead_whistle_warp with storage royalsiege:main

playsound royalsiege:abilities.undead_whistle master @a ~ ~ ~ 0.6 0.7

scoreboard players set @s undeadWhistleTimer 900

tag @s remove undeadwhistle
