execute at @s run playsound item.shield.block master @a[distance=..10] ~ ~ ~ 1 0

execute at @s run particle block iron_block ~ ~1 ~ 0.3 0.3 0.3 1 100

tag @s add countering

effect give @s slowness 4 1 true

clear @s carrot_on_a_stick{counter:1b} 1