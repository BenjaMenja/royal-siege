execute if entity @s[team=Red] run effect give @a[team=Blue] levitation 5 1 true

execute if entity @s[team=Blue] run effect give @a[team=Red] levitation 5 1 true

execute if entity @s[team=Red] run tellraw @a [{"selector":"@s"},{"text":" is inverting Blue team's gravity!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@s"},{"text":" is inverting Red team's gravity!"}]

clear @s carrot_on_a_stick{gravitycanceler:1b} 1

scoreboard players set @s gravityTimer 300