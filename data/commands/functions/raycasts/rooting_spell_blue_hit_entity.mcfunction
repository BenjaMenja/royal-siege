scoreboard players set #hit ray.root 1
execute at @s run playsound entity.slime.jump master @a[team=Red,distance=..10] ~ ~ ~ 1 0
effect give @s slowness 3 6 true
effect give @s jump_boost 3 200 true
execute if entity @a[tag=rooting,tag=wrenched] run effect give @s wither 4 2 true 
tag @s add rooted
execute at @s run particle block grass_block ~ ~ ~ 1 1 1 0.1 100 normal
tellraw @s {"text":"Rooted!","color":"dark_green"}
