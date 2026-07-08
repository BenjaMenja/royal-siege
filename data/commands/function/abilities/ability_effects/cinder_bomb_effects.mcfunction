execute if entity @s[tag=cindersmokered] as @a[team=Blue,distance=..5,predicate=!commands:effects/on_fire] run damage @s 3 commands:cinder_bomb

execute if entity @s[tag=cindersmokered] as @a[team=Blue,distance=..5,predicate=commands:effects/on_fire] run damage @s 6 commands:cinder_bomb

execute if entity @s[tag=cindersmokeblue] as @a[team=Red,distance=..5,predicate=!commands:effects/on_fire] run damage @s 3 commands:cinder_bomb

execute if entity @s[tag=cindersmokeblue] as @a[team=Red,distance=..5,predicate=commands:effects/on_fire] run damage @s 6 commands:cinder_bomb

scoreboard players set @s cinderBombDuration 20