execute at @s[team=Red] as @a[team=Red,distance=..8] run function commands:attributes/adds/add_guarding_shield_buffs

execute at @s[team=Blue] as @a[team=Blue,distance=..8] run function commands:attributes/adds/add_guarding_shield_buffs

advancement revoke @s only commands:guarding_shield
