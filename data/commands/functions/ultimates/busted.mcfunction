execute if entity @s[team=Red] as @a[team=Blue,scores={Health=21..}] run damage @s 12 commands:busted

execute if entity @s[team=Blue] as @a[team=Red,scores={Health=21..}] run damage @s 12 commands:busted

execute if entity @s[team=Red] run effect clear @a[team=Blue,scores={Health=21..},predicate=commands:in_any_battlefield] regeneration

execute if entity @s[team=Red] run effect clear @a[team=Blue,scores={Health=21..},predicate=commands:in_any_battlefield] absorption

execute if entity @s[team=Red] as @a[team=Blue,scores={Health=21..},predicate=commands:in_any_battlefield] run function #commands:clear_health_boost_attributes

execute if entity @s[team=Blue] run effect clear @a[team=Red,scores={Health=21..},predicate=commands:in_any_battlefield] regeneration

execute if entity @s[team=Blue] run effect clear @a[team=Red,scores={Health=21..},predicate=commands:in_any_battlefield] absorption

execute if entity @s[team=Blue] as @a[team=Red,scores={Health=21..},predicate=commands:in_any_battlefield] run function #commands:clear_health_boost_attributes

execute if entity @s[team=Red] run tellraw @a [{"selector":"@s"},{"text":" has busted the Blue team!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@s"},{"text":" has busted the Red team!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{busted:1b}]