clear @s bow[custom_data~{bowofjustice:1b}]

tellraw @s {"text":"The bow of justice crumbled to dust...","color":"green"}

tag @s remove justiceKill

scoreboard players reset @s jKillTimer