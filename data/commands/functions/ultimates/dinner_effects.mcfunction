execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed1] rotated as @s run teleport @s ^ ^ ^1 ~10 0

execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed2] rotated as @s run teleport @s ^ ^ ^-1 ~10 0

execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed3] rotated as @s run teleport @s ^1 ^ ^ ~10 0

execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed4] rotated as @s run teleport @s ^-1 ^ ^ ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue1] rotated as @s run teleport @s ^ ^ ^1 ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue2] rotated as @s run teleport @s ^ ^ ^-1 ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue3] rotated as @s run teleport @s ^1 ^ ^ ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue4] rotated as @s run teleport @s ^-1 ^ ^ ~10 0

execute at @s[tag=dinnerTargetRed] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_dinner_effect_atkdmg

execute at @s[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] resistance 1 0 true

execute at @s[tag=dinnerTargetRed] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_dinner_effect_atkspd

execute at @s[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] fire_resistance 1 0 true

execute at @s[tag=dinnerTargetRed] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_dinner_effect_speed

execute at @s[tag=dinnerTargetBlue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_dinner_effect_atkdmg

execute at @s[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] resistance 1 0 true

execute at @s[tag=dinnerTargetBlue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_dinner_effect_atkspd

execute at @s[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] fire_resistance 1 0 true

execute at @s[tag=dinnerTargetBlue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_dinner_effect_speed