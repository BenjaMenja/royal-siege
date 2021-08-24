execute at @s run particle dust 0.933 1.000 0.000 1 ~ ~1 ~-0.5 0.5 0.7 0 0 5 force @a[tag=!protected]

execute at @s run particle dust 0.933 1.000 0.000 1 ~-0.5 ~1 ~ 0 0.7 0.5 0 5 force @a[tag=!protected]

execute at @s run particle dust 0.933 1.000 0.000 1 ~ ~1 ~0.5 0.5 0.7 0 0 5 force @a[tag=!protected]

execute at @s run particle dust 0.933 1.000 0.000 1 ~0.5 ~1 ~ 0 0.7 0.5 0 5 force @a[tag=!protected]
 
effect give @s resistance 1 2 true

effect give @s[advancements={commands:barrier_take=true}] instant_health 1 1 true