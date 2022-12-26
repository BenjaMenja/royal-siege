execute if entity @s[team=Red] run effect give @a[team=Blue] glowing 8 0 true

execute if entity @s[team=Blue] run effect give @a[team=Red] glowing 8 0 true

scoreboard players set @s glowingEffectCD 1200