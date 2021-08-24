tag @s[team=!spectator] add spectate

scoreboard players set @s[team=!spectator] Kit 100

execute if entity @s[team=!spectator] run tellraw @a [{"selector":"@a[tag=spectate,team=!spectator]"},{"text":" has become a spectator!"}]

scoreboard players set @s[team=!spectator] ultCheck 12000

team join spectator @s[team=!spectator]

tag @s[tag=spectate] add STOP

tag @s remove spectate

tag @s[tag=!STOP] add nonspectate

scoreboard players set @s[team=spectator,tag=!STOP,tag=nonspectate] Kit 0

execute if entity @s[team=spectator,tag=!STOP,tag=nonspectate] run tellraw @a [{"selector":"@a[team=spectator,tag=!STOP,tag=nonspectate]"},{"text":" is no longer a spectator!"}]

scoreboard players set @s[team=spectator,tag=!STOP,tag=nonspectate] ultCheck 0

team leave @s[team=spectator,tag=!STOP,tag=nonspectate]

tag @s remove nonspectate

tag @s remove STOP




