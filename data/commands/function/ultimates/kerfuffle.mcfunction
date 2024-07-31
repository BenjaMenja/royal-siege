execute if entity @s[team=Red] run tag @a[team=Blue] add scrambled

execute if entity @s[team=Red] run effect give @a[team=Blue] blindness 5 0 true

execute if entity @s[team=Red] as @a[team=Blue] run function commands:attributes/adds/add_kerfuffle_slow

execute if entity @s[team=Blue] run tag @a[team=Red] add scrambled

execute if entity @s[team=Blue] run effect give @a[team=Red] blindness 5 0 true

execute if entity @s[team=Blue] as @a[team=Red] run function commands:attributes/adds/add_kerfuffle_slow

tellraw @a [{"selector":"@s"},{"text":" is scrambling up the enemy team!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{kerfuffle:1b}]