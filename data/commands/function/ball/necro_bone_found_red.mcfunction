summon snowball ~ ~ ~ {Tags:["necrobonered","init","snowball","redProj"],Passengers:[{id:"marker",Tags:["necrobonered","redProj"]}],Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[211]}}}}

data modify entity @e[type=snowball,tag=necrobonered,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=necrobonered,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=necrobonered,tag=init,limit=1] remove init

kill @s