tag @s add undeadwhistle

execute store result storage royalsiege:main ypos double 1 run data get entity @s Pos[1]

execute if entity @s[team=Red] as @e[predicate=!commands:necromancer_cant_target,distance=..25,team=Red] run function commands:other/undead_whistle_warp with storage royalsiege:main

execute if entity @s[team=Blue] as @e[predicate=!commands:necromancer_cant_target,distance=..25,team=Blue] run function commands:other/undead_whistle_warp with storage royalsiege:main

scoreboard players set @s undeadWhistleTimer 900

tag @s remove undeadwhistle
