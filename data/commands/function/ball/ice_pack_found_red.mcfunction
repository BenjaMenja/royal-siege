summon snowball ~ ~ ~ {Tags:["icepackred","init","snowball","redProj"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["icepackred","redProj"]}],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[200]}}}}

data modify entity @e[type=snowball,tag=icepackred,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=icepackred,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=icepackred,tag=init,limit=1] remove init

scoreboard players add @a[team=Red,scores={Kit=16}] icePackUses 1

kill @s