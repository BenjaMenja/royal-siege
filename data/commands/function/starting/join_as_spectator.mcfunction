tellraw @s {"text":"A game is currently in progress. Moving to spectator...","color":"red"}

clear @s

tag @s add spectator

scoreboard players operation @s matchID = #matchID matchID

tag @s add inCurrentMatch