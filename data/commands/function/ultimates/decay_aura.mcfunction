execute at @s[team=Red] run effect give @a[team=Blue,distance=..7] wither 3 3 true

execute at @s[team=Red] as @a[team=Blue,distance=..7] run function commands:attributes/adds/add_decay_aura_atkdmg

execute at @s[team=Red] as @a[team=Blue,distance=..7] run function commands:attributes/adds/add_decay_aura_slow

execute at @s[team=Red] as @a[team=Blue,distance=..7] run function commands:attributes/adds/add_decay_aura_armor_shred

execute at @s[team=Blue] run effect give @a[team=Red,distance=..7] wither 3 3 true

execute at @s[team=Blue] as @a[team=Red,distance=..7] run function commands:attributes/adds/add_decay_aura_atkdmg

execute at @s[team=Blue] as @a[team=Red,distance=..7] run function commands:attributes/adds/add_decay_aura_slow

execute at @s[team=Blue] as @a[team=Red,distance=..7] run function commands:attributes/adds/add_decay_aura_armor_shred

execute at @s run particle dust{color:[0.294,0.220,0.188],scale:1} ~ ~ ~ 1 1 1 1 10