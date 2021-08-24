execute if entity @s[team=Red] run scoreboard players set @a[team=Blue,scores={Health=21..}] customDamage 12

execute if entity @s[team=Blue] run scoreboard players set @a[team=Red,scores={Health=21..}] customDamage 12

execute if entity @s[team=Red] run effect clear @a[team=Blue,scores={Health=21..},predicate=commands:in_any_battlefield] regeneration

execute if entity @s[team=Red] run effect clear @a[team=Blue,scores={Health=21..},predicate=commands:in_any_battlefield] absorption

execute if entity @s[team=Red] run effect clear @a[team=Blue,scores={Health=21..},predicate=commands:in_any_battlefield] health_boost

execute if entity @s[team=Blue] run effect clear @a[team=Red,scores={Health=21..},predicate=commands:in_any_battlefield] regeneration

execute if entity @s[team=Blue] run effect clear @a[team=Red,scores={Health=21..},predicate=commands:in_any_battlefield] absorption

execute if entity @s[team=Blue] run effect clear @a[team=Red,scores={Health=21..},predicate=commands:in_any_battlefield] health_boost

execute if entity @s[team=Red] run tellraw @a [{"selector":"@s"},{"text":" has busted the Blue team!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@s"},{"text":" has busted the Red team!"}]

execute as @a[scores={customDamage=1..}] run function pd:damage

clear @s carrot_on_a_stick{busted:1b}