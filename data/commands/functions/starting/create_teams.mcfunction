#4 Player Game

execute if score @p players matches 4 if entity @a[tag=randomized,tag=randomTeams] run team join Red @a[limit=2,team=!spectator,sort=random]

execute if score @p players matches 4 if entity @a[tag=randomized,tag=randomTeams] run team join Blue @a[limit=2,team=!Red,team=!spectator,sort=random]

#6 Player

execute if score @p players matches 6 if entity @a[tag=randomized,tag=randomTeams] run team join Red @a[limit=3,team=!spectator,sort=random]

execute if score @p players matches 6 if entity @a[tag=randomized,tag=randomTeams] run team join Blue @a[limit=3,team=!Red,team=!spectator,sort=random]

#8 Player

execute if score @p players matches 8 if entity @a[tag=randomized,tag=randomTeams] run team join Red @a[limit=4,team=!spectator,sort=random]

execute if score @p players matches 8 if entity @a[tag=randomized,tag=randomTeams] run team join Blue @a[limit=4,team=!Red,team=!spectator,sort=random]

#10 Player

execute if score @p players matches 10 if entity @a[tag=randomized,tag=randomTeams] run team join Red @a[limit=5,team=!spectator,sort=random]

execute if score @p players matches 10 if entity @a[tag=randomized,tag=randomTeams] run team join Blue @a[limit=5,team=!Red,team=!spectator,sort=random]

#Everyone else to spectator

execute if entity @a[tag=randomized,tag=randomTeams] run tag @a[team=!spectator,team=!Red,team=!Blue] add spectate

execute if entity @a[tag=randomized,tag=randomTeams] run scoreboard players set @a[team=!spectator,team=!Red,team=!Blue] Kit 100

execute if entity @a[tag=randomized,tag=randomTeams] run scoreboard players set @a[team=!spectator,team=!Red,team=!Blue] ultCheck 12000

execute if entity @a[tag=randomized,tag=randomTeams] run team join spectator @a[team=!spectator,team=!Red,team=!Blue]

execute if entity @a[tag=randomized,tag=randomTeams] run tag @a[tag=spectate] add STOP

execute if entity @a[tag=randomized,tag=randomTeams] run tag @a[tag=spectate] remove spectate

#Other Stuff

execute if entity @a[tag=randomized,tag=randomTeams] run title @a title {"text":"Choose your Fighter!","color":"light_purple"}

execute if entity @s[tag=randomized,tag=randomTeams] run teleport @a -1311.5 53 1372.5 90 0

#Stuff after teams are randomized

scoreboard players set #characterselect spawnStuff 1

scoreboard players set #playercount spawnStuff 0

tag @s remove randomTeams




