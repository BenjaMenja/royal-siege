fill ~ ~ ~ ~ ~ ~ air replace chest

execute if entity @s[tag=mimicred] run tag @p[team=Blue,distance=..4] add mimiceat

execute if entity @s[tag=mimicblue] run tag @p[team=Red,distance=..4] add mimiceat

tp @a[tag=mimiceat] -488 56 -120

kill @e[type=marker,tag=mimic,distance=..1]

kill @s