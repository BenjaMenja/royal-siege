execute if entity @s[team=Red] run effect give @a[team=Red,distance=..10] resistance 1 100 true

execute if entity @s[team=Red] at @a[team=Red,distance=..10] run particle electric_spark ~ ~3 ~ 0 0 0 0 1

execute if entity @s[team=Blue] run effect give @a[team=Blue,distance=..10] resistance 1 100 true

execute if entity @s[team=Blue] at @a[team=Blue,distance=..10] run particle electric_spark ~ ~3 ~ 0 0 0 0 1