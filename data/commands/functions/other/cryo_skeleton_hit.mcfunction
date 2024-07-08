function commands:attributes/adds/add_cryo_skeleton_jump

function commands:attributes/adds/add_cryo_skeleton_slow

execute at @s run particle block{block_state:"snow_block"} ~ ~ ~ 0.25 0.25 0.25 1 10

advancement revoke @s only commands:cryo_skeleton_damage