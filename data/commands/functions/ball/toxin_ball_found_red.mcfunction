summon snowball ~ ~ ~ {Tags:["toxinballred","init","snowball"],Passengers:[{id:"minecraft:area_effect_cloud",Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["toxinitemred"]}],Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:107}}}

data modify entity @e[type=snowball,tag=toxinballred,tag=init,limit=1] Owner set from entity @s Owner

data modify entity @e[type=snowball,tag=toxinballred,tag=init,limit=1] Motion set from entity @s Motion

tag @e[type=snowball,tag=toxinballred,tag=init,limit=1] remove init

kill @s