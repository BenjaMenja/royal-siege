#Guidebook

tag @a[tag=!newPlayer] add newPlayer

execute as @a[tag=newPlayer,tag=!oldPlayer] run function commands:admin/initialize_class_info

execute as @a[tag=newPlayer,tag=!oldPlayer] run function commands:books/manual

kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}},predicate=commands:in_spawn_room]

#Textclicks

execute as @a unless score @s textClick = @s textClick run scoreboard players enable @s textClick

#Switch Teams

execute if entity @a[limit=1,tag=teamSwitch,team=Red] if entity @a[limit=1,tag=teamSwitch,team=Blue] run function commands:spawn/team_switch

#Starting the game (Including ready system)

execute if entity @a[predicate=commands:in_character_select_area] run function commands:starting/ready_status

execute if score #characterselect spawnStuff matches 1 as @a[team=!spectator,tag=readyUp] run scoreboard players add #readyplayers spawnStuff 1

execute if score #characterselect spawnStuff matches 1 if entity @a[limit=1,tag=readyUp] run scoreboard players add #readytimer spawnStuff 1

execute if score #readytimer spawnStuff matches 200.. run tellraw @a[team=!spectator,scores={ultCheck=1..32},tag=!readyUp] [{"text":"You need to ready yourself up! ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to ready yourself up!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger textClick set 127"}},{"text":" to ready up!"}]

execute if score #readytimer spawnStuff matches 200.. run scoreboard players reset #readytimer spawnStuff

execute if score #characterselect spawnStuff matches 1 if score #readyplayers spawnStuff >= @a[limit=1] players run tag @a add startDelay

execute if score #characterselect spawnStuff matches 1 if entity @a[tag=startDelay] run scoreboard players add #startdelay spawnStuff 1

execute if score #startdelay spawnStuff matches 1 run tellraw @a {"text":"Everyone is ready! Game starting in 5 seconds...","color":"aqua"}

execute if score #characterselect spawnStuff matches 1 if score #startdelay spawnStuff matches 100 run function commands:starting/initial_start

scoreboard players reset #readyplayers spawnStuff

#Character Select Music

execute if score #characterselect spawnStuff matches 1 run scoreboard players add #charSelectSong spawnStuff 1

execute if score #charSelectSong spawnStuff matches 1 at @a[limit=1] run playsound royalsiege:songs.character_select_hall_intro record @a ~ ~ ~ 100 1

execute if score #charSelectSong spawnStuff matches 1480 unless score #charSelectIntro spawnStuff matches 1 at @a[limit=1] run playsound royalsiege:songs.character_select_hall_loop record @a ~ ~ ~ 100 1

execute if score #charSelectSong spawnStuff matches 1400 if score #charSelectIntro spawnStuff matches 1 at @a[limit=1] run playsound royalsiege:songs.character_select_hall_loop record @a ~ ~ ~ 100 1

execute if score #charSelectSong spawnStuff matches 1480 run scoreboard players set #charSelectIntro spawnStuff 1

execute if score #charSelectSong spawnStuff matches 1481 run scoreboard players set #charSelectSong spawnStuff 2

execute if score #charSelectSong spawnStuff matches 1401 if score #charSelectIntro spawnStuff matches 1 run scoreboard players set #charSelectSong spawnStuff 2

#Other Spawnstuff

execute as @a[predicate=commands:in_practice_range] run scoreboard players operation @s Ultimate = @s ultCheck

execute as @a[predicate=commands:in_practice_range] run tag @s remove notAlive

execute unless entity @a[predicate=commands:in_any_battlefield] run scoreboard objectives modify Health numberformat blank

execute unless entity @a[predicate=commands:in_any_battlefield] run scoreboard objectives setdisplay sidebar

execute if entity @a[predicate=commands:in_any_battlefield] run scoreboard objectives modify Health numberformat

execute as @a[tag=practiceRangePVP] at @s run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~2 ~ 0 0 0 0 1 force @a[tag=practiceRangePVP]

effect give @a[predicate=commands:on_character_select_bridge] speed 1 9 true

advancement grant @a[scores={secret=23}] only commands:hidden_advancements/secret

scoreboard players set @a[scores={secret=23}] secret 0

effect give @a[predicate=commands:in_spawn_room] weakness 1 100 true

effect give @a[predicate=commands:in_character_select_area] weakness 1 100 true

effect give @a[predicate=commands:in_parkour_area] weakness 1 100 true

effect give @a[predicate=commands:in_credits_room] weakness 1 100 true

effect give @a[predicate=commands:in_spawn_room] resistance 1 100 true

effect give @a[predicate=commands:in_character_select_area] resistance 1 100 true

effect give @a[predicate=commands:in_parkour_area] resistance 1 100 true

effect give @a[predicate=commands:in_credits_room] resistance 1 100 true

effect give @a[predicate=commands:in_spawn_room] saturation 1 100 true

effect give @a[predicate=commands:in_character_select_area] saturation 1 100 true

effect give @a[predicate=commands:in_parkour_area] saturation 1 100 true

effect give @a[predicate=commands:in_credits_room] saturation 1 100 true

gamemode adventure @a[gamemode=survival]

kill @e[type=item,predicate=commands:in_character_select_area]

#Parkour Stuff

scoreboard players set @a[predicate=commands:in_parkour_area,predicate=commands:on_parkour_first_block,tag=!startParkour] parkourTime 1

scoreboard players set @a[predicate=commands:in_parkour_area,predicate=commands:on_parkour_first_block,tag=!startParkour] PPainSong 1

tag @a[predicate=commands:in_parkour_area,predicate=commands:on_parkour_first_block] add startParkour

playsound royalsiege:songs.parkour_pain_intro record @a[scores={PPainSong=1}] ~ ~ ~ 100 1

scoreboard players add @a[predicate=commands:in_parkour_area,predicate=!commands:on_parkour_floor,scores={parkourTime=1..}] parkourTime 1

scoreboard players add @a[predicate=commands:in_parkour_area,predicate=!commands:on_parkour_floor,scores={PPainSong=1..}] PPainSong 1

playsound royalsiege:songs.parkour_pain_loop record @a[scores={parkourTime=..1211,PPainSong=1201..}] ~ ~ ~ 100 1

playsound royalsiege:songs.parkour_pain_loop record @a[scores={parkourTime=1211..,PPainSong=1121..}] ~ ~ ~ 100 1

scoreboard players set @a[scores={parkourTime=..1211,PPainSong=1201..}] PPainSong 2

scoreboard players set @a[scores={parkourTime=1211..,PPainSong=1121..}] PPainSong 2

scoreboard players reset @a[predicate=commands:on_parkour_floor] PPainSong

stopsound @a[predicate=commands:on_parkour_floor] record royalsiege:songs.parkour_pain_intro

stopsound @a[predicate=commands:on_parkour_floor] record royalsiege:songs.parkour_pain_loop

tag @a[predicate=commands:on_parkour_floor] remove startParkour

scoreboard players reset @a[predicate=commands:on_parkour_floor] parkourTime

team join parkour @a[predicate=commands:in_parkour_area]

team leave @a[predicate=!commands:in_parkour_area,team=parkour]

#Move players to spectator if a game is in progress and they join. #matchID's matchID value is NOT 0 if a game is happening.

execute unless score #matchID matchID matches 0 as @a unless score @s matchID = #matchID matchID run function commands:starting/join_as_spectator







