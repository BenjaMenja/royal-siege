advancement grant @s only commands:hidden_advancements/parkour_master

#Parkour Time Part

scoreboard players operation #timestore parkourTime = @s parkourTime

execute if score @s parkourTime matches 1200.. store result score #minutes parkourTime run scoreboard players operation #timestore parkourTime /= #minuteconst parkourTime

execute if score @s parkourTime matches 1200.. run scoreboard players operation #pminutestore parkourTime = #minutes parkourTime

execute if score @s parkourTime matches 1200.. store result score #minutesubtract parkourTime run scoreboard players operation #minutes parkourTime *= #minuteconst parkourTime

execute if score @s parkourTime matches 1200.. run scoreboard players operation @s parkourTime -= #minutesubtract parkourTime

scoreboard players operation #timestore parkourTime = @s parkourTime

execute if score @s parkourTime matches 20.. store result score #seconds parkourTime run scoreboard players operation #timestore parkourTime /= #secondconst parkourTime

execute if score @s parkourTime matches 20.. run scoreboard players operation #psecondstore parkourTime = #seconds parkourTime

execute if score @s parkourTime matches 20.. store result score #secondsubtract parkourTime run scoreboard players operation #seconds parkourTime *= #secondconst parkourTime

execute if score @s parkourTime matches 20.. run scoreboard players operation @s parkourTime -= #secondsubtract parkourTime

#Other Stuff

tellraw @a [{"selector":"@s","color":"green"},{"text":" has completed the parkour in ","color":"aqua"},{"score":{"name":"#pminutestore","objective":"parkourTime"},"color":"aqua"},{"text":"m "},{"score":{"name":"#psecondstore","objective":"parkourTime"},"color":"aqua"},{"text":"s "},{"score":{"name":"@s","objective":"parkourTime"},"color":"aqua"},{"text":"t!"}]

scoreboard players set #timestore parkourTime 0

scoreboard players set #minutes parkourTime 0

scoreboard players set #pminutestore parkourTime 0

scoreboard players set #minutesubtract parkourTime 0

scoreboard players set #seconds parkourTime 0

scoreboard players set #psecondstore parkourTime 0

scoreboard players set #secondsubtract parkourTime 0

tp @s -1215 54 1260

