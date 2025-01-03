team leave @a[team=!spectator]

tag @a add randomTeams

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

#Tell

tellraw @a {"text":"Teams have been re-randomized!","color":"aqua"}