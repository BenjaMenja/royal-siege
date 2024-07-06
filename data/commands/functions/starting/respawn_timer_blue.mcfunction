execute as @p[x=-1402,y=60,z=1230,distance=..5,team=Blue,limit=1,sort=nearest] at @s positioned ~ ~ ~ run scoreboard players add @a[x=-1402,y=60,z=1230,distance=..5,team=Blue] Respawn 1

tag @a[x=-1402,y=60,z=1230,distance=..5] remove rodeHorse

scoreboard players reset @a[x=-1402,y=60,z=1230,distance=..5] Mimic

execute if score #gameDuration gameDuration matches ..18000 if score #gamemode settings matches 0 run title @a[scores={Respawn=-100},team=Blue] times 10 170 20

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[scores={Respawn=-100},team=Blue] times 10 270 20

execute if score #gamemode settings matches 1 run title @a[scores={Respawn=91},team=Blue] times 10 80 20

execute if score #gamemode settings matches 0 run title @a[team=Blue,scores={Respawn=11}] title ["",{"text":"Spawning in...","color":"blue"}]

execute if score #gamemode settings matches 1 run title @a[team=Blue,scores={Respawn=101}] title ["",{"text":"Spawning in...","color":"blue"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Blue,scores={Respawn=-100}] subtitle ["",{"text":"15","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Blue,scores={Respawn=-80}] subtitle ["",{"text":"14","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Blue,scores={Respawn=-60}] subtitle ["",{"text":"13","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Blue,scores={Respawn=-40}] subtitle ["",{"text":"12","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @a[team=Blue,scores={Respawn=-20}] subtitle ["",{"text":"11","color":"green"}]

title @a[team=Blue,scores={Respawn=2}] subtitle ["",{"text":"10","color":"green"}]

title @a[team=Blue,scores={Respawn=20}] subtitle ["",{"text":"9","color":"green"}]

title @a[team=Blue,scores={Respawn=40}] subtitle ["",{"text":"8","color":"green"}]

title @a[team=Blue,scores={Respawn=60}] subtitle ["",{"text":"7","color":"green"}]

title @a[team=Blue,scores={Respawn=80}] subtitle ["",{"text":"6","color":"green"}]

title @a[team=Blue,scores={Respawn=100}] subtitle ["",{"text":"5","color":"green"}]

title @a[team=Blue,scores={Respawn=120}] subtitle ["",{"text":"4","color":"green"}]

title @a[team=Blue,scores={Respawn=140}] subtitle ["",{"text":"3","color":"green"}]

title @a[team=Blue,scores={Respawn=160}] subtitle ["",{"text":"2","color":"green"}]

title @a[team=Blue,scores={Respawn=180}] subtitle ["",{"text":"1","color":"green"}]

tag @a[scores={Respawn=200..}] remove notAlive

tag @a[scores={Respawn=200..}] remove shadowdeath

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 as @a[team=Blue,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s -4 60 -66

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 as @a[team=Blue,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 58 60 -1111

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 as @a[team=Blue,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 1015 53 -61

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 as @a[team=Blue,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=200..}] at @s run teleport @s 1971 106 33

title @a[scores={Respawn=200..},team=Blue] times 10 40 20

execute as @e[type=marker,tag=resSoulBlue] if score @a[team=Blue,scores={Respawn=200..},limit=1] UUID = @s UUID run kill @s

scoreboard players set @a[team=Blue,scores={Respawn=200..}] Respawn 0



