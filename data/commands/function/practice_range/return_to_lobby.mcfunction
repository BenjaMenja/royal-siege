tag @s add leavingpracticerange

team leave @s 

function commands:gameplay_events/ending/reset_scores

function commands:cooldowns/reset_cooldown_list

clear @s

effect clear @s

tag @s remove upgraded

tag @s remove practiceRangePVP

execute at @s run function commands:ultimates/smart_drone_destroy_all

execute as @e[type=zombie,tag=WM] if score @s UUID = @p[tag=leavingpracticerange] UUID run tp @s ~ -200 ~

tp @s -1215 54 1260

spawnpoint @s -1215 54 1260

tag @s remove leavingpracticerange