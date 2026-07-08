execute at @s if entity @n[type=item,tag=hook,distance=..2] store result score @s chainHookUUID run scoreboard players get @n[type=item,tag=hook,distance=..2] chainHookUUID

execute at @s run kill @e[type=item,tag=hook,distance=..2]

execute at @s[team=Red] as @a[team=Blue] if score @s UUID = @p[tag=hooked] chainHookUUID at @p[tag=hooked] run teleport @p[tag=hooked] ~ ~ ~ facing entity @s

execute at @s[team=Blue] as @a[team=Red] if score @s UUID = @p[tag=hooked] chainHookUUID at @p[tag=hooked] run teleport @p[tag=hooked] ~ ~ ~ facing entity @s

execute at @s[team=Red] as @a[team=Blue] if score @s UUID = @p[tag=hooked] chainHookUUID at @s run teleport @s ~ ~ ~ facing entity @p[tag=hooked]

execute at @s[team=Blue] as @a[team=Red] if score @s UUID = @p[tag=hooked] chainHookUUID at @s run teleport @s ~ ~ ~ facing entity @p[tag=hooked]

playsound royalsiege:abilities.chain_hook_hit master @s[scores={chainHook=1}] ~ ~ ~

execute as @a[limit=1,scores={Kit=7}] at @s if entity @e[type=wither_skeleton,tag=dummy,tag=hooked] run teleport @s ~ ~ ~ facing entity @e[limit=1,type=wither_skeleton,tag=dummy,tag=hooked,sort=nearest]

effect give @s slowness 2 6 true

execute at @s[team=Red] as @a[team=Blue] if score @s UUID = @p[tag=hooked] chainHookUUID run effect give @s slowness 1 6 true

effect give @s weakness 1 100 true