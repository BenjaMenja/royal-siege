summon snowball ~ ~ ~ {Tags:["groundingspellblue","init","snowball","blueProj"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["groundingspellblue","blueProj"]}],Item:{id:"minecraft:snowball",Count:1b,components:{"minecraft:custom_model_data":195}}}

data modify entity @e[type=snowball,tag=groundingspellblue,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=groundingspellblue,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=groundingspellblue,tag=init,limit=1] remove init

kill @s