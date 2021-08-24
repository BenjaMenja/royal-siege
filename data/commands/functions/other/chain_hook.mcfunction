

kill @e[type=item,tag=hook,distance=..2]

execute at @s run teleport @s ~ ~ ~ facing entity @a[limit=1,scores={Kit=7}]

playsound royalsiege:abilities.chain_hook_hit master @s[scores={chainHook=1}] ~ ~ ~

execute as @a[limit=1,scores={Kit=7}] run tag @s add hookUser

execute as @a[limit=1,scores={Kit=7},team=Red] at @s run teleport @s ~ ~ ~ facing entity @p[tag=hooked,team=Blue]

execute as @a[limit=1,scores={Kit=7},team=Blue] at @s run teleport @s ~ ~ ~ facing entity @p[tag=hooked,team=Red]

effect give @s slowness 1 6 true

effect give @a[limit=1,tag=hookUser] slowness 1 6 true

effect give @s weakness 1 100 true

effect give @a[limit=1,tag=hookUser] weakness 1 100 true

