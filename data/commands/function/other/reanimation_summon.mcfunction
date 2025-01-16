tag @s add summoning

execute at @s[team=Red] run function commands:entities/necromancer_summon_red

execute at @s[team=Blue] run function commands:entities/necromancer_summon_blue

data modify entity @n[type=skeleton,tag=undeadsummon] Pos set from entity @p[tag=summoning] LastDeathLocation

tag @s remove summoning