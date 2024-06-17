particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~ ~ 2.5 1 2.5 1 100 normal

execute at @s[team=Red] run effect give @a[team=Blue,distance=..8] instant_damage 1 0 true

execute at @s[team=Red] run tag @a[team=Blue,distance=..8] add shadowdeath

execute at @s[team=Red] run effect give @e[type=wither_skeleton,team=Blue,tag=King,distance=..8] instant_health 1 0 true

execute at @s[team=Blue] run effect give @a[team=Red,distance=..8] instant_damage 1 0 true

execute at @s[team=Blue] run tag @a[team=Red,distance=..8] add shadowdeath

execute at @s[team=Blue] run effect give @e[type=wither_skeleton,team=Red,tag=King,distance=..8] instant_health 1 0 true