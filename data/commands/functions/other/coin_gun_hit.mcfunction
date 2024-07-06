summon minecraft:arrow ~ ~3 ~ {damage:10.0d,Motion:[0.0,-1.0,0.0],Tags:["coinArrow"]}

execute if entity @s[team=Red] run data modify entity @e[type=arrow,tag=coinArrow,tag=!stop,limit=1] Owner set from entity @a[scores={Kit=7},team=Blue,limit=1] UUID

execute if entity @s[team=Blue] run data modify entity @e[type=arrow,tag=coinArrow,tag=!stop,limit=1] Owner set from entity @a[scores={Kit=7},team=Red,limit=1] UUID

kill @e[type=item,tag=coinBullet,distance=..2,limit=1,sort=nearest]

tag @e[type=arrow,tag=coinArrow,tag=!stop] add stop

tag @s remove coinHit
