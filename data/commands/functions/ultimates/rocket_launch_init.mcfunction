tellraw @a [{"selector":"@s"},{"text":" is launching a rocket!","color":"aqua"}]

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Age:-2147483647,WaitTime:-2147483647,Tags:["rocketPad"]}

summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["rocketPad"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CustomModelData:181}}}

scoreboard players set @s rocLaunchTimer 0

clear @s carrot_on_a_stick{rocketlaunch:1b}