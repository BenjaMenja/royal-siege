execute as @p[x=-1402,y=60,z=1230,distance=..5,team=spectator,limit=1,sort=nearest] at @s positioned ~ ~ ~ run scoreboard players add @a[x=-1402,y=60,z=1230,distance=..5,team=spectator] Respawn 1

execute if score #gamemode settings matches 0 run title @a[scores={Respawn=1},team=spectator] times 10 170 20

execute if score #gamemode settings matches 1 run title @a[scores={Respawn=91},team=spectator] times 10 80 20

title @a[team=spectator,scores={Respawn=11}] title ["",{"text":"Spawning in...","color":"blue"}]

title @a[team=spectator,scores={Respawn=2}] subtitle ["",{"text":"10","color":"green"}]

title @a[team=spectator,scores={Respawn=20}] subtitle ["",{"text":"9","color":"green"}]

title @a[team=spectator,scores={Respawn=40}] subtitle ["",{"text":"8","color":"green"}]

title @a[team=spectator,scores={Respawn=60}] subtitle ["",{"text":"7","color":"green"}]

title @a[team=spectator,scores={Respawn=80}] subtitle ["",{"text":"6","color":"green"}]

title @a[team=spectator,scores={Respawn=100}] subtitle ["",{"text":"5","color":"green"}]

title @a[team=spectator,scores={Respawn=120}] subtitle ["",{"text":"4","color":"green"}]

title @a[team=spectator,scores={Respawn=140}] subtitle ["",{"text":"3","color":"green"}]

title @a[team=spectator,scores={Respawn=160}] subtitle ["",{"text":"2","color":"green"}]

title @a[team=spectator,scores={Respawn=180}] subtitle ["",{"text":"1","color":"green"}]

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[team=spectator,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 11 69 -132

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[team=spectator,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 58 82 -1030

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 as @a[team=spectator,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 19 80 -1971

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 as @a[team=spectator,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 1051 63 -94 0 0

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 as @a[team=spectator,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 2017 82 0

title @a[scores={Respawn=200..},team=spectator] times 10 70 20

scoreboard players set @a[team=spectator,scores={Respawn=200..}] Respawn 0



