execute if entity @s[team=Red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Age:-2147483647,WaitTime:-2147483647,Tags:["redTether","tetherSpot"]}

execute if entity @s[team=Blue] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Age:-2147483647,WaitTime:-2147483647,Tags:["blueTether","tetherSpot"]}

tag @s add tethered

tellraw @s {"text":"You created a tether at your location!","color":"aqua"}