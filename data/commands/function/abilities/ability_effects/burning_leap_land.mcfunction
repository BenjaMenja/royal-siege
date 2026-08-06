tag @s remove burningLeap

execute if entity @s[team=Red] as @a[team=Blue,distance=..5] run damage @s 5 commands:burning_leap

execute if entity @s[team=Blue] as @a[team=Red,distance=..5] run damage @s 5 commands:burning_leap

playsound block.fire.extinguish master @a[distance=..5] ~ ~ ~ 0.5 1.5

particle flame ~ ~ ~ 0.25 0.75 0.25 1 15 force