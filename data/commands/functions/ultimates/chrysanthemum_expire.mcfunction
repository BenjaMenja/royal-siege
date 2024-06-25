tag @s remove chrysanthemumLaunch

tag @s remove cshelldown

scoreboard players set @s RSAttr.CShellDownGravity 0

tellraw @s[predicate=commands:inventory/chrysanthemum_shell] {"text":"Your chrysanthemum shell has fizzled away...","color":"red"}

clear @s carrot_on_a_stick[custom_data~{chrysanthemumshell:1b}]

scoreboard players set @s RSAttr.SafeFallDist 0
