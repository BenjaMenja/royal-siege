summon snowball ~ ~ ~ {Tags:["toxinballblue","init","snowball","blueProj"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["toxinitemblue","blueProj"]}],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[107]}}}}

data modify entity @e[type=snowball,tag=toxinballblue,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=toxinballblue,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=toxinballblue,tag=init,limit=1] remove init

kill @s