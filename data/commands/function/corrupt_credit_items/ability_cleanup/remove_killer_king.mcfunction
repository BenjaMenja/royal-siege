execute if entity @s[team=Red] run tag @e[type=wither_skeleton,team=Red,tag=King,tag=killerking] remove killerking

execute if entity @s[team=Blue] run tag @e[type=wither_skeleton,team=Blue,tag=King,tag=killerking] remove killerking

execute if entity @s[team=Red] run effect clear @e[type=wither_skeleton,team=Red,tag=King,tag=killerking] strength

execute if entity @s[team=Blue] run effect clear @e[type=wither_skeleton,team=Blue,tag=King,tag=killerking] strength

advancement revoke @s only commands:killer_king