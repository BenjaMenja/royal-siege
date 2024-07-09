tellraw @a [{"selector":"@s"},{"text":" is launching a rocket!","color":"aqua"}]

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Age:-2147483647,WaitTime:-2147483647,Tags:["rocketPad"]}

summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["rocketPad"],Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_model_data":181}}}

scoreboard players set @s rocLaunchTimer 0

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{rocketlaunch:1b}]