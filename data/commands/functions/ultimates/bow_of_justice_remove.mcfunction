tellraw @s[predicate=commands:inventory/bow_of_justice] {"text":"The bow of justice crumbled to dust...","color":"green"}

clear @s bow[custom_data~{bowofjustice:1b}]

tag @s remove justiceKill

scoreboard players reset @s jKillTimer