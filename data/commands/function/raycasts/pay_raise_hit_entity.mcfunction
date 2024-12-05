scoreboard players set #hit ray.payRaise 1
execute store result score #healthOld healthVar run scoreboard players get @s Health
function commands:other/custom_heal {health:4,ult_charge_receiver:"@a[tag=payraise]"}
tag @s add needsmoney
scoreboard players set @a[tag=payraise] payRaiseTimer 300