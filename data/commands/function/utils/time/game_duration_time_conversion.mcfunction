scoreboard players operation #durationstore gameDuration = #gameDuration gameDuration

execute if score #gameDuration gameDuration matches 1200.. store result score #minutes gameDuration run scoreboard players operation #durationstore gameDuration /= #minuteconst gameDuration

execute if score #gameDuration gameDuration matches 1200.. run scoreboard players operation #gameminutestore gameDuration = #minutes gameDuration

execute if score #gameDuration gameDuration matches 1200.. store result score #minutesubtract gameDuration run scoreboard players operation #minutes gameDuration *= #minuteconst gameDuration

execute if score #gameDuration gameDuration matches 1200.. run scoreboard players operation #gameDuration gameDuration -= #minutesubtract gameDuration

scoreboard players operation #durationstore gameDuration = #gameDuration gameDuration

execute if score #gameDuration gameDuration matches 20.. store result score #seconds gameDuration run scoreboard players operation #durationstore gameDuration /= #secondconst gameDuration

execute if score #gameDuration gameDuration matches 20.. run scoreboard players operation #gamesecondstore gameDuration = #seconds gameDuration

execute if score #gameDuration gameDuration matches 20.. store result score #secondsubtract gameDuration run scoreboard players operation #seconds gameDuration *= #secondconst gameDuration

execute if score #gameDuration gameDuration matches 20.. run scoreboard players operation #gameDuration gameDuration -= #secondsubtract gameDuration