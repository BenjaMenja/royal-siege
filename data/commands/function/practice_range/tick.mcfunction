execute as @a[team=Red,tag=practiceRangeRespawn] at @s run function commands:starting/red

execute as @a[team=Blue,tag=practiceRangeRespawn] at @s run function commands:starting/blue

tag @a[scores={RedKit=0}] remove practiceRangeRespawn

tag @a[scores={BlueKit=0}] remove practiceRangeRespawn