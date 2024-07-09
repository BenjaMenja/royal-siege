execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["systemRebootRed","systemReboot","redProj","ultimateProj"],Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":82}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {Health:1000,PickupDelay:32767,Tags:["systemRebootBlue","systemReboot","blueProj","ultimateProj"],Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":82}}}

execute as @e[tag=systemReboot] run data modify entity @s Owner set from entity @s UUID

execute anchored eyes store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,limit=1,tag=systemReboot,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,limit=1,tag=systemReboot,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,limit=1,tag=systemReboot,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation @e[tag=systemReboot,limit=1,tag=!stop] posX -= @s posX

scoreboard players operation @e[tag=systemReboot,limit=1,tag=!stop] posY -= @s posY

scoreboard players operation @e[tag=systemReboot,limit=1,tag=!stop] posZ -= @s posZ

execute as @e[tag=systemReboot,limit=1,tag=!stop] store result entity @s Motion[0] double 0.001 run scoreboard players get @s posX

execute as @e[tag=systemReboot,limit=1,tag=!stop] store result entity @s Motion[1] double 0.001 run scoreboard players get @s posY

execute as @e[tag=systemReboot,limit=1,tag=!stop] store result entity @s Motion[2] double 0.001 run scoreboard players get @s posZ

tag @e[tag=systemReboot] add stop

tellraw @a [{"selector":"@s"},{"text":" has initiated a system reboot!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{systemreboot:1b}] 1