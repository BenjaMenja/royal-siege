kill @s

effect clear @a[team=Red,distance=..5] regeneration

effect clear @a[team=Red,distance=..5] health_boost

effect clear @a[team=Red,distance=..5] absorption

effect give @a[team=Red,distance=..5] slowness 5 1

effect give @a[team=Red,distance=..5] poison 5 1

playsound block.grass.break master @a[distance=..5] ~ ~ ~ 1 2

particle block grass ~ ~ ~ 0.5 0.5 0.5 1 50

