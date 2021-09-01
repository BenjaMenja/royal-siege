tp @a[team=Blue] -1388 59 1230

tp @a[team=Red] -1388 59 1194

tp @a[team=spectator] -1402 58 1208

scoreboard players set #characterselect spawnStuff 0

scoreboard players set #charSelectSong spawnStuff 0

scoreboard players set #charSelectIntro spawnStuff 0

scoreboard players reset #startdelay spawnStuff

scoreboard players reset #startbutton spawnStuff

stopsound @a record royalsiege:songs.character_select_hall_loop

stopsound @a record royalsiege:songs.character_select_hall_intro

tag @a remove startToReady

tag @a remove startDelay

tag @a remove readyUp