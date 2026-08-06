execute if entity @s[tag=sparkingStaffProjectileRed] run damage @p[team=Blue] 7 minecraft:on_fire

execute if entity @s[tag=sparkingStaffProjectileBlue] run damage @p[team=Red] 7 minecraft:on_fire

particle dust{color:[1.000,0.902,0.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.5 10 force

kill @s