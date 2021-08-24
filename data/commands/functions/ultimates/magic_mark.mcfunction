execute at @s run particle dust 0.459 0.000 0.490 1 ~ ~2 ~-0.5 0.25 0 0 0 10 normal @a[tag=!marked]

execute at @s run particle dust 0.459 0.000 0.490 1 ~-0.5 ~2 ~ 0 0 0.25 0 1 normal @a[tag=!marked]

execute at @s run particle dust 0.459 0.000 0.490 1 ~ ~2 ~0.5 0.25 0 0 0 10 normal @a[tag=!marked]

execute at @s run particle dust 0.459 0.000 0.490 1 ~0.5 ~2 ~ 0 0 0.25 0 10 normal @a[tag=!marked]

effect give @a[scores={Marked=1..},tag=marked] instant_damage 1 1 true

effect give @a[scores={Marked=1..},tag=marked] wither 5 1