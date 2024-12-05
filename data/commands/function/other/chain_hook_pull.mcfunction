execute if entity @s[team=Red] as @a[team=Blue] if score @s UUID = @p[tag=hooked,team=Red] chainHookUUID run teleport @p[tag=hooked,team=Red] @s

execute if entity @s[team=Blue] as @a[team=Red] if score @s UUID = @p[tag=hooked,team=Blue] chainHookUUID run teleport @p[tag=hooked,team=Blue] @s

playsound royalsiege:abilities.chain_hook_retract master @a ~ ~ ~

execute at @s run teleport @s ^ ^ ^1

execute at @s run teleport @s ~ ~0.8 ~

execute if entity @s[team=Red] at @s as @a[team=Blue] if score @s UUID = @p[tag=hooked,team=Red] chainHookUUID run teleport @p[tag=hooked,team=Red] ~ ~ ~ facing entity @s

execute if entity @s[team=Blue] at @s as @a[team=Red] if score @s UUID = @p[tag=hooked,team=Blue] chainHookUUID run teleport @p[tag=hooked,team=Blue] ~ ~ ~ facing entity @s

tag @s remove hooked

scoreboard players reset @s chainHookUUID

scoreboard players reset @s chainHook