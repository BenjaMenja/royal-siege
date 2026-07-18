scoreboard players set #hit ray.root 1
execute at @s[team=Red] run playsound entity.slime.jump master @a[team=Red,distance=..10] ~ ~ ~ 1 0
execute at @s[team=Blue] run playsound entity.slime.jump master @a[team=Blue,distance=..10] ~ ~ ~ 1 0
execute if entity @s[team=Red] run tellraw @p[team=Blue,tag=rooting] [{"text":"You rooted: ","color":"green"},{"selector":"@s"}]
execute if entity @s[team=Blue] run tellraw @p[team=Red,tag=rooting] [{"text":"You rooted: ","color":"green"},{"selector":"@s"}]
scoreboard players set @s RSAttr.Rooted 60
function commands:attributes/adds/add_rooted
execute if entity @a[tag=rooting,tag=wrenched] run effect give @s wither 4 2 true 
tag @s add rooted
execute at @s run particle block{block_state:"grass_block"} ~ ~ ~ 1 1 1 0.1 100 normal

