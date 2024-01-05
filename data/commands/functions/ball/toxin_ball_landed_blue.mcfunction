kill @s

effect clear @a[team=Red,distance=..5] regeneration

execute as @a[team=Red,distance=..5] run function #commands:clear_health_boost_attributes

effect clear @a[team=Red,distance=..5] absorption

execute as @a[team=Red,distance=..5] run function commands:attributes/adds/add_toxin_ball_slow

effect give @a[team=Red,distance=..5] poison 5 1

playsound block.grass.break master @a[distance=..5] ~ ~ ~ 1 2

particle block grass ~ ~ ~ 0.5 0.5 0.5 1 50

