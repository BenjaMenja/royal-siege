execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random value 1..3

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was consumed by a spider.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" became Broodmother spawn.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was infested by a spider.","color":"white"}]

execute at @s[team=Red] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Red",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Red] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Red",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Red] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Red",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Red] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Red",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Blue] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Blue",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Blue] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Blue",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Blue] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Blue",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

execute at @s[team=Blue] run summon minecraft:cave_spider ~ ~ ~ {Health:16f,Tags:["broodmotherspawn"],Team:"Blue",attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25}]}

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
