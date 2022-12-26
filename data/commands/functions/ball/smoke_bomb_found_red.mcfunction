summon snowball ~ ~ ~ {Tags:["smokebombred","init","snowball"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["smokebombcloudred"]}],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:8}}}

data modify entity @e[type=snowball,tag=smokebombred,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=smokebombred,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=smokebombred,tag=init,limit=1] remove init

kill @s