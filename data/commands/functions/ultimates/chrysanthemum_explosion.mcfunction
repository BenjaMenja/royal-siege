execute if entity @s[tag=redProj] as @a[distance=..15,team=Blue] run damage @s 6 explosion

execute if entity @s[tag=blueProj] as @a[distance=..15,team=Red] run damage @s 6 explosion

summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]}]}}}}

particle flame ~ ~ ~ 1 1 1 1 100 force

particle firework ~ ~ ~ 1 1 1 1 100 force

execute as @a[team=Blue,distance=..15] run scoreboard players add @a[team=Red,tag=chrysanthemumLaunch] nearbyPlayers 1

execute as @a[team=Red,distance=..15] run scoreboard players add @a[team=Blue,tag=chrysanthemumLaunch] nearbyPlayers 1

execute if entity @s[tag=redProj] as @a[team=Red,limit=1,tag=chrysanthemumLaunch,scores={nearbyPlayers=1..}] run function commands:attributes/adds/add_chrysanthemum_shell_speed

execute if entity @s[tag=blueProj] as @a[team=Blue,limit=1,tag=chrysanthemumLaunch,scores={nearbyPlayers=1..}] run function commands:attributes/adds/add_chrysanthemum_shell_speed

execute if entity @s[tag=redProj] run tag @s[team=Red,tag=chrysanthemumLaunch] remove chrysanthemumLaunch 

execute if entity @s[tag=blueProj] run tag @s[team=Blue,tag=chrysanthemumLaunch] remove chrysanthemumLaunch

kill @s