scoreboard players set #hit ray.root 1
execute at @s run playsound entity.slime.jump master @a[team=Red,distance=..10] ~ ~ ~ 1 0
scoreboard players set @s RSAttr.Rooted 60
function commands:attributes/adds/add_rooted
execute if entity @a[tag=rooting,tag=wrenched] run effect give @s wither 4 2 true 
tag @s add rooted
execute at @s run particle block{block_state:"grass_block"} ~ ~ ~ 1 1 1 0.1 100 normal