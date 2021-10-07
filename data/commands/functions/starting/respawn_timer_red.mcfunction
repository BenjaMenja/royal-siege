execute as @p[x=-1402,y=60,z=1194,distance=..5,team=Red,limit=1,sort=nearest] at @s positioned ~ ~ ~ run scoreboard players add @a[x=-1402,y=60,z=1194,distance=..5,team=Red] Respawn 1

tag @a[x=-1402,y=60,z=1194,distance=..5] remove rodeHorse

scoreboard players reset @a[x=-1402,y=60,z=1194,distance=..5] Mimic

execute if score #gameDuration gameDuration matches ..18000 if score #gamemode settings matches 0 run title @a[scores={Respawn=-100},team=Red] times 10 170 20

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[scores={Respawn=-100},team=Red] times 10 270 20

execute if score #gamemode settings matches 0 run title @a[scores={Respawn=1},team=Red] times 10 170 20

execute if score #gamemode settings matches 1 run title @a[scores={Respawn=91},team=Red] times 10 80 20

execute if score #gamemode settings matches 0 run title @a[team=Red,scores={Respawn=11}] title ["",{"text":"Spawning in...","color":"blue"}]

execute if score #gamemode settings matches 1 run title @a[team=Red,scores={Respawn=101}] title ["",{"text":"Spawning in...","color":"blue"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Red,scores={Respawn=-100}] subtitle ["",{"text":"15","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Red,scores={Respawn=-80}] subtitle ["",{"text":"14","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Red,scores={Respawn=-60}] subtitle ["",{"text":"13","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Red,scores={Respawn=-40}] subtitle ["",{"text":"12","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Red,scores={Respawn=-20}] subtitle ["",{"text":"11","color":"green"}]

title @a[team=Red,scores={Respawn=2}] subtitle ["",{"text":"10","color":"green"}]

title @a[team=Red,scores={Respawn=20}] subtitle ["",{"text":"9","color":"green"}]

title @a[team=Red,scores={Respawn=40}] subtitle ["",{"text":"8","color":"green"}]

title @a[team=Red,scores={Respawn=60}] subtitle ["",{"text":"7","color":"green"}]

title @a[team=Red,scores={Respawn=80}] subtitle ["",{"text":"6","color":"green"}]

title @a[team=Red,scores={Respawn=100}] subtitle ["",{"text":"5","color":"green"}]

title @a[team=Red,scores={Respawn=120}] subtitle ["",{"text":"4","color":"green"}]

title @a[team=Red,scores={Respawn=140}] subtitle ["",{"text":"3","color":"green"}]

title @a[team=Red,scores={Respawn=160}] subtitle ["",{"text":"2","color":"green"}]

title @a[team=Red,scores={Respawn=180}] subtitle ["",{"text":"1","color":"green"}]

tag @a[scores={Respawn=200..}] remove notAlive

tag @a[scores={Respawn=200..}] remove shadowdeath

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[team=Red,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 22 60 -198

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[team=Red,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 139 60 -1004

execute if score #gamemode settings matches 1 as @a[team=Red,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 1086 53 -61

title @a[scores={Respawn=200..},team=Red] times 10 40 20

scoreboard players set @a[team=Red,scores={Respawn=200..}] Respawn 0



