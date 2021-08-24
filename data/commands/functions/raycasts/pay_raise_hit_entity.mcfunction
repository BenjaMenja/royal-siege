scoreboard players set #hit ray.payRaise 1
execute store result score #healthOld healthVar run scoreboard players get @s Health
effect give @s instant_health 1 0 true
tag @s add needsmoney
scoreboard players set @a[tag=payraise] payRaiseTimer 0