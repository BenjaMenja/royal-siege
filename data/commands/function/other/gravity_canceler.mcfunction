execute if entity @s[team=Red] run effect give @a[team=Blue,predicate=commands:in_any_battlefield] levitation 5 1 true

execute if entity @s[team=Blue] run effect give @a[team=Red,predicate=commands:in_any_battlefield] levitation 5 1 true

execute if entity @s[team=Red] run tellraw @a [{"selector":"@s"},{"text":" is inverting Blue team's gravity!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@s"},{"text":" is inverting Red team's gravity!"}]

scoreboard players set @s gravityTimer 500