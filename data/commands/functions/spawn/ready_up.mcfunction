tag @s[tag=!readyUp,team=!spectator,tag=startToReady] add readytemp

tag @s[tag=!readyUp,team=!spectator,tag=startToReady] add readyUp

execute if entity @s[tag=readytemp,team=!spectator,tag=startToReady] run tellraw @s {"text":"You readied yourself up!","color":"aqua"}

tag @s[tag=readytemp,team=!spectator,tag=startToReady] add readyStop

tag @s remove readytemp

tag @s[tag=!readyStop,team=!spectator,tag=startToReady] add readyEnd

tag @s[tag=readyUp,tag=!readyStop,tag=readyEnd,team=!spectator,tag=startToReady] remove readyUp

execute if entity @s[tag=readyEnd,team=!spectator,tag=startToReady] run tellraw @s {"text":"You unreadied yourself!","color":"aqua"}

execute if entity @s[team=spectator,tag=startToReady] run tellraw @s {"text":"You do not have to ready up as a spectator!","color":"red"}

tag @s remove readyStop

tag @s remove readyEnd