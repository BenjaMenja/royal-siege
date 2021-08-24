execute if entity @s[team=Red] run tag @a[team=Blue] add scrambled

execute if entity @s[team=Red] run effect give @a[team=Blue] blindness 5 0 true

execute if entity @s[team=Red] run effect give @a[team=Blue] slowness 5 1 true

execute if entity @s[team=Blue] run tag @a[team=Red] add scrambled

execute if entity @s[team=Blue] run effect give @a[team=Red] blindness 5 0 true

execute if entity @s[team=Blue] run effect give @a[team=Red] slowness 5 1 true

tellraw @a [{"selector":"@s"},{"text":" is scrambling up the enemy team!"}]

clear @s carrot_on_a_stick{kerfuffle:1b}