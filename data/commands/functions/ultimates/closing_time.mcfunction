execute if entity @s[predicate=commands:in_any_blue_castle] run tag @s add blueCastle

execute if entity @s[predicate=commands:in_any_red_castle] run tag @s add redCastle

execute if entity @s[tag=redCastle] run function commands:ultimates/closing_time_fill_red

execute if entity @s[tag=blueCastle] run function commands:ultimates/closing_time_fill_blue

execute if entity @s[tag=redCastle] run tag @a[team=Red] add noWarp

execute if entity @s[tag=blueCastle] run tag @a[team=Blue] add noWarp

execute at @s[tag=redCastle] run tag @a[scores={Ultimate=22},distance=..4] add closingRed

execute at @s[tag=blueCastle] run tag @a[scores={Ultimate=22},distance=..4] add closingBlue

execute if entity @s[tag=redCastle] run tellraw @a {"text":"Red team's castle has shut down!","color":"red"}

execute if entity @s[tag=blueCastle] run tellraw @a {"text":"Blue team's castle has shut down!","color":"blue"}

execute at @s run playsound block.anvil.destroy master @a[distance=..10] ~ ~ ~ 1 0

clear @s carrot_on_a_stick{closingtime:1b}