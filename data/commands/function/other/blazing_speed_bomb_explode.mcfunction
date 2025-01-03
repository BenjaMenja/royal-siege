execute if entity @s[tag=blazingspeedbombred] as @a[distance=..3,team=Blue] run damage @s 5 commands:bang_snap

execute if entity @s[tag=blazingspeedbombred] as @a[distance=..3,team=Blue] at @s run summon small_fireball ~ ~2.1 ~ {Fire:20s,Motion:[0.0d,-1.0d,0.0d],Tags:["smf"]}

execute if entity @s[tag=blazingspeedbombblue] as @a[distance=..3,team=Red] run damage @s 5 commands:bang_snap

execute if entity @s[tag=blazingspeedbombblue] as @a[distance=..3,team=Red] at @s run summon small_fireball ~ ~2.1 ~ {Fire:20s,Motion:[0.0d,-1.0d,0.0d],Tags:["smf"]}

particle minecraft:flash ~ ~ ~ 0.3 0.3 0.3 0 5

playsound minecraft:entity.firework_rocket.blast master @a[distance=..10] ~ ~ ~ 1 1.5

kill @s