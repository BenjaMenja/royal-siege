summon minecraft:arrow ~ ~2.5 ~ {Motion:[0.0,-1.0,0.0],damage:1.0d,Tags:["cardArrow"]}

execute if entity @e[type=item,sort=nearest,tag=pCard,tag=royalFlush] run tag @e[type=arrow,tag=cardArrow,tag=!stop] add royalFlush

execute if entity @s[team=Red] run data modify entity @e[type=arrow,tag=cardArrow,tag=!stop,limit=1] Owner set from entity @a[scores={Kit=13},team=Blue,limit=1] UUID

execute if entity @s[team=Blue] run data modify entity @e[type=arrow,tag=cardArrow,tag=!stop,limit=1] Owner set from entity @a[scores={Kit=13},team=Red,limit=1] UUID

execute if entity @s[team=Red] store result entity @e[type=arrow,tag=cardArrow,tag=!stop,limit=1] damage double 1 as @e[type=item,sort=nearest,tag=pCardBlue] run scoreboard players get @s cardDamage

execute if entity @s[team=Blue] store result entity @e[type=arrow,tag=cardArrow,tag=!stop,limit=1] damage double 1 as @e[type=item,sort=nearest,tag=pCardRed] run scoreboard players get @s cardDamage

tag @e[type=arrow,tag=cardArrow,tag=!stop] add stop

tag @s remove cardEffect