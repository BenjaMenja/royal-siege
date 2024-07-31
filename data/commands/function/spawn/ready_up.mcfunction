tag @s[tag=!readyUp,team=!spectator,scores={ultCheck=1..}] add readytemp

tag @s[tag=!readyUp,team=!spectator,scores={ultCheck=1..}] add readyUp

execute if entity @s[tag=readytemp,team=!spectator,scores={ultCheck=1..}] run tellraw @s {"text":"You readied yourself up!","color":"aqua"}

tag @s[tag=readytemp,team=!spectator,scores={ultCheck=1..}] add readyStop

tag @s remove readytemp

tag @s[tag=!readyStop,team=!spectator,scores={ultCheck=1..}] add readyEnd

tag @s[tag=readyUp,tag=!readyStop,tag=readyEnd,team=!spectator,scores={ultCheck=1..}] remove readyUp

execute if entity @s[tag=readyEnd,team=!spectator,scores={ultCheck=1..}] run tellraw @s {"text":"You unreadied yourself!","color":"aqua"}

execute if entity @s[team=spectator,scores={ultCheck=1..}] run tellraw @s {"text":"You do not have to ready up as a spectator!","color":"red"}

tag @s remove readyStop

tag @s remove readyEnd