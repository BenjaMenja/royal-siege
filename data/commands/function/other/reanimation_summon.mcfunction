tag @s add summoning

execute at @s[team=Red] run function commands:entities/necromancer_summon_red

execute at @s[team=Blue] run function commands:entities/necromancer_summon_blue

execute store result storage royalsiege:main xpos int 1 run data get entity @s LastDeathLocation.pos[0]

execute store result storage royalsiege:main ypos int 1 run data get entity @s LastDeathLocation.pos[1]

execute store result storage royalsiege:main zpos int 1 run data get entity @s LastDeathLocation.pos[2]

execute as @n[type=skeleton,tag=undeadsummon] at @s run function commands:other/reanimation_teleport with storage royalsiege:main

tag @s remove summoning