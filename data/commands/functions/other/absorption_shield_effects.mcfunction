effect give @s slowness 1 0 true

effect give @s weakness 1 0 true

execute if entity @s[team=Red] if entity @e[tag=ultimateProj,tag=blueProj,distance=..4] run scoreboard players add @s ultsEaten 1

execute if entity @s[team=Blue] if entity @e[tag=ultimateProj,tag=redProj,distance=..4] run scoreboard players add @s ultsEaten 1

execute if entity @s[team=Red] run kill @e[tag=blueProj,distance=..4]

execute if entity @s[team=Blue] run kill @e[tag=redProj,distance=..4]

particle bubble ~ ~ ~ 1 1 1 1 10

scoreboard players remove @s absShieldCount 1

tag @s[scores={absShieldCount=0}] remove absShield

execute if entity @s[scores={absShieldCount=0}] run function commands:replace/absorption_shield_replace

scoreboard players reset @s[scores={absShieldCount=0}] absShieldCD