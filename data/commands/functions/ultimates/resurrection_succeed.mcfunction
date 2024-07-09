tag @s remove resurrecting

clear @s carrot_on_a_stick[custom_data~{resurrection:1b}]

execute if entity @s[team=Red] as @a[team=Red] if score @s UUID = @e[type=marker,limit=1,sort=nearest,tag=resSoulRed] UUID run tag @s add resurrected

execute if entity @s[team=Blue] as @a[team=Blue] if score @s UUID = @e[type=marker,limit=1,sort=nearest,tag=resSoulBlue] UUID run tag @s add resurrected

clear @a[tag=resurrected]

tp @a[tag=resurrected,team=Red] @e[type=marker,limit=1,sort=nearest,tag=resSoulRed]

tp @a[tag=resurrected,team=Blue] @e[type=marker,limit=1,sort=nearest,tag=resSoulBlue]

scoreboard players set @a[team=Red,tag=resurrected] RedKit 197

scoreboard players set @a[team=Blue,tag=resurrected] BlueKit 197

execute as @a[team=Red,tag=resurrected] run function commands:starting/red

execute as @a[team=Blue,tag=resurrected] run function commands:starting/blue

tag @a[tag=resurrected] remove notAlive

execute if entity @a[team=Red,tag=resurrected] run kill @e[type=marker,limit=1,sort=nearest,tag=resSoulRed]

execute if entity @a[team=Blue,tag=resurrected] run kill @e[type=marker,limit=1,sort=nearest,tag=resSoulBlue]

execute if entity @s[team=Red] run scoreboard players remove #bluekills tdmKills 1

execute if entity @s[team=Blue] run scoreboard players remove #redkills tdmKills 1

tellraw @a [{"selector": "@a[tag=resurrected]"},{"text": " has been resurrected!"}]

scoreboard players set @s resurrectionDur 0

scoreboard players add @s ultsUsed 1

tag @a remove resurrected


