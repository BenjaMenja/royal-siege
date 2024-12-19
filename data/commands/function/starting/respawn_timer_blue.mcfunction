scoreboard players add @s Respawn 1

function commands:starting/blue

tag @s remove rodeHorse

scoreboard players reset @s Mimic

execute if score #gameDuration gameDuration matches ..18000 if score #gamemode settings matches 0 run title @s[scores={Respawn=-100}] times 10 170 20

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @s[scores={Respawn=-100}] times 10 270 20

execute if score #gamemode settings matches 0 run title @s[scores={Respawn=1}] times 10 170 20

execute if score #gamemode settings matches 1 run title @s[scores={Respawn=91}] times 10 80 20

execute if score #gamemode settings matches 0 run title @s[scores={Respawn=11}] title ["",{"text":"Spawning in...","color":"blue"}]

execute if score #gamemode settings matches 1 run title @s[scores={Respawn=101}] title ["",{"text":"Spawning in...","color":"blue"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @s[scores={Respawn=-100}] subtitle ["",{"text":"15","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @s[scores={Respawn=-80}] subtitle ["",{"text":"14","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @s[scores={Respawn=-60}] subtitle ["",{"text":"13","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @s[scores={Respawn=-40}] subtitle ["",{"text":"12","color":"green"}]

execute if score #gameDuration gameDuration matches 18000.. if score #gamemode settings matches 0 run title @s[scores={Respawn=-20}] subtitle ["",{"text":"11","color":"green"}]

title @s[scores={Respawn=2}] subtitle ["",{"text":"10","color":"green"}]

title @s[scores={Respawn=20}] subtitle ["",{"text":"9","color":"green"}]

title @s[scores={Respawn=40}] subtitle ["",{"text":"8","color":"green"}]

title @s[scores={Respawn=60}] subtitle ["",{"text":"7","color":"green"}]

title @s[scores={Respawn=80}] subtitle ["",{"text":"6","color":"green"}]

title @s[scores={Respawn=100}] subtitle ["",{"text":"5","color":"green"}]

title @s[scores={Respawn=120}] subtitle ["",{"text":"4","color":"green"}]

title @s[scores={Respawn=140}] subtitle ["",{"text":"3","color":"green"}]

title @s[scores={Respawn=160}] subtitle ["",{"text":"2","color":"green"}]

title @s[scores={Respawn=180}] subtitle ["",{"text":"1","color":"green"}]

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run teleport @s[scores={Respawn=200..}] -4 60 -67

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run teleport @s[scores={Respawn=200..}] 139 60 -1004

execute if score #gamemode settings matches 0 if score #classicMap settings matches 2 run teleport @s[scores={Respawn=200..}] 19 64 -2041

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 0 run teleport @s[scores={Respawn=200..},predicate=!commands:in_tdm_gates] 1015 53 -61

execute if score #gamemode settings matches 1 if score #tdmMap settings matches 1 run teleport @s[scores={Respawn=200..},predicate=!commands:in_tdm_gates] 1968 106 33

title @s[scores={Respawn=200..}] times 10 40 20

title @s[scores={Respawn=200..}] clear

tag @s[scores={Respawn=200..}] remove notAlive

execute as @e[type=marker,tag=resSoulBlue] if score @a[team=Blue,scores={Respawn=200..},limit=1] UUID = @s UUID run kill @s

scoreboard players set @s[scores={Respawn=200..}] Respawn 0



