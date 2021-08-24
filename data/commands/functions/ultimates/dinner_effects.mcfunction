execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed1] rotated as @s run teleport @s ^ ^ ^1 ~10 0

execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed2] rotated as @s run teleport @s ^ ^ ^-1 ~10 0

execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed3] rotated as @s run teleport @s ^1 ^ ^ ~10 0

execute at @s[team=Red] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemRed4] rotated as @s run teleport @s ^-1 ^ ^ ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue1] rotated as @s run teleport @s ^ ^ ^1 ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue2] rotated as @s run teleport @s ^ ^ ^-1 ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue3] rotated as @s run teleport @s ^1 ^ ^ ~10 0

execute at @s[team=Blue] anchored eyes positioned ^ ^ ^ as @e[type=item,tag=dinnerItemBlue4] rotated as @s run teleport @s ^-1 ^ ^ ~10 0

execute at @a[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] strength 1 0 true

execute at @a[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] resistance 1 0 true

execute at @a[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] haste 1 0 true

execute at @a[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] fire_resistance 1 0 true

execute at @a[tag=dinnerTargetRed] run effect give @a[team=Red,distance=..10] speed 1 1 true

execute at @a[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] strength 1 0 true

execute at @a[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] resistance 1 0 true

execute at @a[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] haste 1 0 true

execute at @a[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] fire_resistance 1 0 true

execute at @a[tag=dinnerTargetBlue] run effect give @a[team=Blue,distance=..10] speed 1 1 true