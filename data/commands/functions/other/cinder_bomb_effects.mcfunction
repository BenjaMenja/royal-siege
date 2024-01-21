execute if entity @s[tag=cindersmokered] as @a[team=Blue,distance=..5,predicate=!commands:effects/on_fire] run damage @s 2 on_fire

execute if entity @s[tag=cindersmokered] as @a[team=Blue,distance=..5,predicate=commands:effects/on_fire] run damage @s 4 on_fire

execute if entity @s[tag=cindersmokeblue] as @a[team=Red,distance=..5,predicate=!commands:effects/on_fire] run damage @s 2 on_fire

execute if entity @s[tag=cindersmokeblue] as @a[team=Red,distance=..5,predicate=commands:effects/on_fire] run damage @s 4 on_fire

scoreboard players set @s cinderBombDuration 20