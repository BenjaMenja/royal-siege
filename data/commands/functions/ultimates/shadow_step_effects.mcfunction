particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~ ~ 2.5 1 2.5 1 100 normal

execute at @s[team=Red] as @a[team=Blue,distance=..8] run damage @s 3 commands:shadow_step

execute at @s[team=Red] run effect give @e[type=wither_skeleton,team=Blue,tag=King,distance=..8] instant_health 1 0 true

execute at @s[team=Blue] as @a[team=Red,distance=..8] run damage @s 3 commands:shadow_step

execute at @s[team=Blue] run effect give @e[type=wither_skeleton,team=Red,tag=King,distance=..8] instant_health 1 0 true