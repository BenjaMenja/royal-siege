scoreboard players set @s RSAttr.ResurrectionSlow 60

scoreboard players set @s RSAttr.ResurrectionJump 60

execute if entity @s[team=Red] run kill @e[type=marker,tag=resSoulRed,distance=..6]

execute if entity @s[team=Blue] run kill @e[type=marker,tag=resSoulBlue,distance=..6]

tellraw @a [{"selector": "@s"},{"text":" had their resurrection attempt interrupted!"}]

scoreboard players add @s resurrectionTimer 720

tag @s remove resurrecting

clear @s carrot_on_a_stick[custom_data~{resurrection:1b}]