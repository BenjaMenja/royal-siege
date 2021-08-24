scoreboard players set #hit ray.root 1
execute at @s run playsound entity.slime.jump master @a[team=Blue,distance=..10] ~ ~ ~ 1 0
effect give @s slowness 3 6 true
effect give @s weakness 4 1 true
tag @s add rooted
execute at @s run particle block grass_block ~ ~ ~ 1 1 1 0.1 100 normal
tellraw @s {"text":"Rooted!","color":"dark_green"}

