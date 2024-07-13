teleport @s @a[tag=hookUser,limit=1]

playsound royalsiege:abilities.chain_hook_retract master @s ~ ~ ~

execute at @s run playsound royalsiege:abilities.chain_hook_retract master @a[tag=hookUser,distance=..2] ~ ~ ~

execute at @s run teleport @s ^ ^ ^1

execute at @s run teleport @s ~ ~0.8 ~

execute at @s run teleport @s ~ ~ ~ facing entity @a[tag=hookUser,limit=1,distance=..2]

tag @s remove hooked

effect clear @a[tag=hookUser] weakness

effect clear @a[tag=hookUser] slowness

execute at @s run tag @a[tag=hookUser,distance=..2] remove hookUser

scoreboard players reset @s chainHook