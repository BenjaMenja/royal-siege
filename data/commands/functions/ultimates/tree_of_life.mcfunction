execute at @s[scores={Treeremove=1..2}] run effect give @a[team=Red,distance=..10] regeneration 10 3 true

execute at @s[scores={Treeremove=1..2}] run effect give @a[team=Red,distance=..10] absorption 10 1 true

execute at @s[scores={Treeremove=1},tag=Treeoflife] run playsound royalsiege:ultimates.tree_of_life_friendly master @a[team=Red] ~ ~ ~ 100 1

execute at @s[scores={Treeremove=1},tag=Treeoflife] run playsound royalsiege:ultimates.tree_of_life_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute at @s run effect give @a[team=Red,distance=..10] speed 1 0 true

execute at @s run effect give @a[team=Red,distance=..10] haste 1 0 true

execute at @s run effect give @a[team=Red,distance=..10] resistance 1 0 true

execute at @s run effect give @a[team=Blue,distance=..10] slowness 1 0 true

execute at @s run effect give @a[team=Blue,distance=..10] mining_fatigue 1 0 true

execute at @s run fill ~ ~ ~ ~ ~4 ~ oak_log replace air

execute at @s run fill ~2 ~2 ~2 ~-2 ~4 ~-2 oak_leaves replace air

execute at @s run fill ~2 ~4 ~2 ~2 ~4 ~2 air replace #minecraft:leaves

execute at @s run fill ~-2 ~4 ~2 ~-2 ~4 ~2 air replace #minecraft:leaves

execute at @s run fill ~-2 ~4 ~-2 ~-2 ~4 ~-2 air replace #minecraft:leaves

execute at @s run fill ~2 ~4 ~-2 ~2 ~4 ~-2 air replace #minecraft:leaves

execute at @s run fill ~-1 ~5 ~ ~1 ~5 ~ oak_leaves replace air

execute at @s run fill ~ ~5 ~-1 ~ ~5 ~1 oak_leaves replace air

execute at @s run particle happy_villager ~ ~ ~ 1 1 1 1 20