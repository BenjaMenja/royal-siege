scoreboard objectives setdisplay sidebar readyStatus

scoreboard objectives setdisplay sidebar.team.red readyStatus

scoreboard objectives setdisplay sidebar.team.blue readyStatus

execute as @a[predicate=commands:location/lobby/in_character_select_area,team=!spectator,tag=readyUp] run scoreboard players display numberformat @s readyStatus fixed {"text":"🗸","color":"green"}

execute as @a[predicate=commands:location/lobby/in_character_select_area,team=!spectator,tag=!readyUp] run scoreboard players display numberformat @s readyStatus fixed {"text":"✗","color":"red"}