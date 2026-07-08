team leave @s 

function commands:gameplay_events/ending/reset_scores

clear @s

effect clear @s

tag @s remove upgraded

tag @s remove practiceRangePVP

execute at @s run function commands:ultimates/smart_drone_destroy_all

tp @s -1215 54 1260

spawnpoint @s -1215 54 1260