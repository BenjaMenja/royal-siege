kill @s

execute as @a[distance=..4,team=Blue] at @s run function commands:attributes/adds/add_grounding_spell_jump

tellraw @a[distance=..4,team=Blue] {"text":"Grounded!","color":"red"}

particle block{block_state:"dirt"} ~ ~ ~ 0.25 0.25 0.25 1 10

playsound minecraft:block.rooted_dirt.break master @a ~ ~ ~ 0.5 0.5 0.1

