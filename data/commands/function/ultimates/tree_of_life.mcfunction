execute at @s[scores={Treeremove=1..2}] run effect give @a[team=Red,distance=..10] regeneration 10 3 true

execute at @s[scores={Treeremove=1..2}] run effect give @a[team=Red,distance=..10] absorption 10 1 true

execute at @s[scores={Treeremove=1}] run playsound royalsiege:ultimates.tree_of_life_friendly master @a[team=Red] ~ ~ ~ 100 1

execute at @s[scores={Treeremove=1}] run playsound royalsiege:ultimates.tree_of_life_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute at @s as @a[team=Red,distance=..10] run function commands:attributes/adds/add_tree_of_life_speed

execute at @s as @a[team=Red,distance=..10] run function commands:attributes/adds/add_tree_of_life_atkspd

execute at @s run effect give @a[team=Red,distance=..10] resistance 1 0 true

execute at @s as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_tree_of_life_slow

execute at @s as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_tree_of_life_atkspd_down

execute at @s run fill ~ ~ ~ ~ ~4 ~ oak_log replace air

execute at @s run fill ~2 ~2 ~2 ~-2 ~4 ~-2 oak_leaves replace air

execute at @s run fill ~2 ~4 ~2 ~2 ~4 ~2 air replace #minecraft:leaves

execute at @s run fill ~-2 ~4 ~2 ~-2 ~4 ~2 air replace #minecraft:leaves

execute at @s run fill ~-2 ~4 ~-2 ~-2 ~4 ~-2 air replace #minecraft:leaves

execute at @s run fill ~2 ~4 ~-2 ~2 ~4 ~-2 air replace #minecraft:leaves

execute at @s run fill ~-1 ~5 ~ ~1 ~5 ~ oak_leaves replace air

execute at @s run fill ~ ~5 ~-1 ~ ~5 ~1 oak_leaves replace air

execute at @s run particle happy_villager ~ ~ ~ 1 1 1 1 20