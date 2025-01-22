execute at @s[team=Red] run summon minecraft:spider ~ ~ ~ {Health:50f,Tags:["broodmotherspider"],Team:"Red",attributes:[{id:"minecraft:attack_damage",base:12},{id:"minecraft:knockback_resistance",base:0.75},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:1.2}]}

execute at @s[team=Blue] run summon minecraft:spider ~ ~ ~ {Health:50,Tags:["broodmotherspider"],Team:"Blue",attributes:[{id:"minecraft:attack_damage",base:12},{id:"minecraft:knockback_resistance",base:0.75},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:1.2}]}

clear @s carrot[custom_data~{broodmotherspider:1b}] 1