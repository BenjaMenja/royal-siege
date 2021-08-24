tag @s[tag=!teamSwitch,team=!spectator] add teamSwitchTemp

tag @s[tag=!teamSwitch,team=!spectator] add teamSwitch

execute if entity @s[tag=teamSwitchTemp,team=!spectator] run tellraw @a [{"selector":"@s"},{"text":" wants to switch teams!","color":"aqua"}]

tag @s[tag=teamSwitchTemp,team=!spectator] add teamSwitchStop

tag @s remove teamSwitchTemp

tag @s[tag=!teamSwitchStop,team=!spectator] add teamSwitchEnd

tag @s[tag=teamSwitch,tag=!teamSwitchStop,tag=teamSwitchEnd,team=!spectator] remove teamSwitch

execute if entity @s[tag=teamSwitchEnd,team=!spectator] run tellraw @a [{"selector":"@s"},{"text":" no longer wants to switch teams!","color":"aqua"}]

execute if entity @s[team=spectator] run tellraw @s {"text":"You cannot switch teams as a spectator!","color":"red"}

tag @s remove teamSwitchStop

tag @s remove teamSwitchEnd