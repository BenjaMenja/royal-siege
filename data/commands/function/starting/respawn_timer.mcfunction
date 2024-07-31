execute as @a[x=-1402,y=60,z=1194,distance=..50] at @s positioned ~ ~ ~ run scoreboard players add @a[x=-1402,y=60,z=1194,distance=..50] Respawn 1

title @a[scores={Respawn=11..11}] title ["",{"text":"Spawning in...","color":"blue"}]

title @a[scores={Respawn=2..2}] subtitle ["",{"text":"5","color":"green"}]

title @a[scores={Respawn=20..20}] subtitle ["",{"text":"4","color":"green"}]

title @a[scores={Respawn=40..40}] subtitle ["",{"text":"3","color":"green"}]

title @a[scores={Respawn=60..60}] subtitle ["",{"text":"2","color":"green"}]

title @a[scores={Respawn=80..80}] subtitle ["",{"text":"1","color":"green"}]

execute as @a[team=Red,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=100..}] at @s run teleport @s 9 55 -183

execute as @a[team=Blue,x=-1402,y=60,z=1194,distance=..50,scores={Respawn=100..}] at @s run teleport @s 9 55 -81

scoreboard players set @a[scores={Respawn=100..}] Respawn 0
