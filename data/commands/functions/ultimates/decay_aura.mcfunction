

execute as @s[scores={DecayD=5},team=Red] at @s run effect give @e[type=zombie,team=Blue,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=5},team=Red] at @s run effect give @e[type=wither_skeleton,team=Blue,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=5},team=Red] at @s run effect give @e[type=wither_skeleton,team=Red,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=5},team=Red] at @s run effect give @e[type=skeleton,team=Blue,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=5},team=Red] at @s run effect give @e[type=guardian,team=Blue,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=5},team=Red] at @s run effect give @e[type=horse,team=Blue,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=13},team=Red] at @s run effect give @a[team=Blue,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=13},team=Red] at @s run effect give @e[type=zombie,team=Blue,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=13},team=Red] at @s run effect give @e[type=wither_skeleton,team=Blue,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=13},team=Red] at @s run effect give @e[type=skeleton,team=Blue,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=13},team=Red] at @s run effect give @e[type=guardian,team=Blue,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=13},team=Red] at @s run effect give @e[type=horse,team=Blue,distance=..7] instant_damage 1 1 true


#Blue Team


execute as @s[scores={DecayD=5},team=Blue] at @s run effect give @e[type=zombie,team=Red,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=5},team=Blue] at @s run effect give @e[type=wither_skeleton,team=Red,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=5},team=Blue] at @s run effect give @e[type=wither_skeleton,team=Blue,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=5},team=Blue] at @s run effect give @e[type=skeleton,team=Red,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=5},team=Blue] at @s run effect give @e[type=guardian,team=Red,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=5},team=Blue] at @s run effect give @e[type=horse,team=Red,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=13},team=Blue] at @s run effect give @a[team=Red,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=13},team=Blue] at @s run effect give @e[type=zombie,team=Red,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=13},team=Blue] at @s run effect give @e[type=wither_skeleton,team=Red,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=13},team=Blue] at @s run effect give @e[type=skeleton,team=Red,distance=..7] instant_health 1 1 true

execute as @s[scores={DecayD=13},team=Blue] at @s run effect give @e[type=guardian,team=Red,distance=..7] instant_damage 1 1 true

execute as @s[scores={DecayD=13},team=Blue] at @s run effect give @e[type=horse,team=Red,distance=..7] instant_damage 1 1 true

execute at @s[team=Red] run effect give @a[team=Blue,distance=..7] wither 3 3 true

execute at @s[team=Red] run effect give @a[team=Blue,distance=..7] weakness 3 0 true

execute at @s[team=Red] run tag @a[team=Blue,distance=..7] add decaydeath

execute at @s[team=Blue] run effect give @a[team=Red,distance=..7] wither 3 3 true

execute at @s[team=Blue] run effect give @a[team=Red,distance=..7] weakness 3 0 true

execute at @s[team=Blue] run tag @a[team=Red,distance=..7] add decaydeath