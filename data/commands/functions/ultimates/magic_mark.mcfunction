execute at @s run particle dust 0.459 0.000 0.490 1 ~ ~2 ~-0.5 0.25 0 0 0 10 normal @a[tag=!marked]

execute at @s run particle dust 0.459 0.000 0.490 1 ~-0.5 ~2 ~ 0 0 0.25 0 1 normal @a[tag=!marked]

execute at @s run particle dust 0.459 0.000 0.490 1 ~ ~2 ~0.5 0.25 0 0 0 10 normal @a[tag=!marked]

execute at @s run particle dust 0.459 0.000 0.490 1 ~0.5 ~2 ~ 0 0 0.25 0 10 normal @a[tag=!marked]

effect give @s[scores={Marked=1..}] instant_damage 1 1 true

effect give @s[scores={Marked=1..}] wither 5 1

scoreboard players add @s mMarkDur 1

tellraw @s[scores={mMarkDur=240..}] {"text":"Your magic mark has been lifted!","color":"aqua"}

tag @s[scores={mMarkDur=240..}] remove marked

scoreboard players reset @s[scores={mMarkDur=240..}] mMarkDur