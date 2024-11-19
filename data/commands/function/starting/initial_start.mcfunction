tp @a[team=Blue] -1388 59 1230

tp @a[team=Red] -1388 59 1194

tp @a[team=spectator] -1402 58 1208

scoreboard players set #characterselect spawnStuff 0

scoreboard players set #charSelectSong spawnStuff 0

scoreboard players set #charSelectIntro spawnStuff 0

scoreboard players reset #startdelay spawnStuff

scoreboard players reset #startbutton spawnStuff

tag @a add inCurrentMatch

stopsound @a record royalsiege:songs.character_select_hall_loop

stopsound @a record royalsiege:songs.character_select_hall_intro

tag @a remove startToReady

tag @a remove startDelay

tag @a remove readyUp

#Getting match ID

execute store result score #matchID matchID run random roll -1000000000..1000000000

execute as @a store result score @s matchID run scoreboard players get #matchID matchID

