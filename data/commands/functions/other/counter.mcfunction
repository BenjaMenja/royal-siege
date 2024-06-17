execute at @s run playsound item.shield.block master @a[distance=..10] ~ ~ ~ 1 0

execute at @s run particle block{block_state:"iron_block"} ~ ~1 ~ 0.3 0.3 0.3 1 100

tag @s add countering

function commands:attributes/adds/add_counter_slow

clear @s carrot_on_a_stick[custom_data~{counter:1b}] 1