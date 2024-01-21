summon snowball ~ ~ ~ {Tags:["bangsnapred","init","snowball"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["bangsnapred"]}],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:189}}}

data modify entity @e[type=snowball,tag=bangsnapred,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=bangsnapred,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=bangsnapred,tag=init,limit=1] remove init

kill @s