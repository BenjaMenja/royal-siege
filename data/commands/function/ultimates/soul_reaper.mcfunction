scoreboard players set @s soulReaperCount 0

tag @s add soulReaper

execute if entity @s[team=Red] as @e[tag=undeadsummon,distance=..15,team=Red] run scoreboard players add @p[tag=soulReaper] soulReaperCount 1

execute if entity @s[team=Red] as @e[tag=broodmotherspawn,distance=..15,team=Red] run scoreboard players add @p[tag=soulReaper] soulReaperCount 1

execute if entity @s[team=Red] as @e[tag=broodmotherspider,distance=..15,team=Red] run scoreboard players add @p[tag=soulReaper] soulReaperCount 1

execute if entity @s[team=Blue] as @e[tag=undeadsummon,distance=..15,team=Blue] run scoreboard players add @p[tag=soulReaper] soulReaperCount 1

execute if entity @s[team=Blue] as @e[tag=broodmotherspawn,distance=..15,team=Blue] run scoreboard players add @p[tag=soulReaper] soulReaperCount 1

execute if entity @s[team=Blue] as @e[tag=broodmotherspider,distance=..15,team=Blue] run scoreboard players add @p[tag=soulReaper] soulReaperCount 1

execute if entity @s[team=Red] run kill @e[tag=undeadsummon,distance=..15,team=Red]

execute if entity @s[team=Red] run kill @e[tag=broodmotherspawn,distance=..15,team=Red]

execute if entity @s[team=Red] run kill @e[tag=broodmotherspider,distance=..15,team=Red]

execute if entity @s[team=Blue] run kill @e[tag=undeadsummon,distance=..15,team=Blue]

execute if entity @s[team=Blue] run kill @e[tag=broodmotherspawn,distance=..15,team=Blue]

execute if entity @s[team=Blue] run kill @e[tag=broodmotherspider,distance=..15,team=Blue]

execute if score @s soulReaperCount matches 10.. run scoreboard players set @s soulReaperCount 10

scoreboard players operation @s soulReaperCount *= #8 constant

execute store result storage royalsiege:main soul_reaper_dmg double 0.1 run scoreboard players get @s soulReaperCount

particle dust{color:[0.5,0.0,1.0],scale:1.25} ~ ~ ~ 0.5 1 0.5 0.25 75

particle dust{color:[1.0,0.0,0.0],scale:1.25} ~ ~ ~ 0.5 1 0.5 0.25 75

function commands:attributes/adds/add_soul_reaper_atkdmg with storage royalsiege:main

playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 2