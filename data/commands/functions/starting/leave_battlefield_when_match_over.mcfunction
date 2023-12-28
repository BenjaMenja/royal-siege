tellraw @s {"text":"No game in progress, sending back to lobby...","color":"red"}

clear @s

team leave @s

scoreboard players reset @s matchID

function commands:starting/end_score_tag_reset

tp @s -1215 54 1262