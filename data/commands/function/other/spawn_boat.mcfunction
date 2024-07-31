execute at @s[team=Red,x=79,y=53,z=-1003,distance=..4] run summon minecraft:boat ~ ~ ~ {Type:"oak",Rotation:[90F,0F],Tags:["redBoat","winterBoat"]}

execute at @s[team=Blue,x=79,y=53,z=-1003,distance=..4] run summon minecraft:boat ~ ~ ~ {Type:"oak",Rotation:[90F,0F],Tags:["blueBoat","winterBoat"]}

execute at @s[team=Red,x=31,y=53,z=-1051,distance=..4] run summon minecraft:boat ~ ~ ~ {Type:"oak",Rotation:[0F,0F],Tags:["redBoat","winterBoat"]}

execute at @s[team=Blue,x=31,y=53,z=-1051,distance=..4] run summon minecraft:boat ~ ~ ~ {Type:"oak",Rotation:[0F,0F],Tags:["blueBoat","winterBoat"]}

execute as @e[type=boat,tag=redBoat] run scoreboard players add #redBoats multiItems 1

execute as @e[type=boat,tag=blueBoat] run scoreboard players add #blueBoats multiItems 1

execute if score #redBoats multiItems matches 3.. at @s[team=Red] run kill @e[type=boat,sort=nearest,limit=1,tag=redBoat]

execute if score #blueBoats multiItems matches 3.. at @s[team=Blue] run kill @e[type=boat,sort=nearest,limit=1,tag=blueBoat]

scoreboard players reset #redBoats multiItems

scoreboard players reset #blueBoats multiItems