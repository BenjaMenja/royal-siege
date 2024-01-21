particle flash ~ ~ ~ 0.1 0.1 0.1 1 5

playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 2

execute as @a[team=Blue,distance=..5] at @s run damage @s 4 explosion

execute at @a[team=Blue,distance=..5] run summon small_fireball ~ ~2.1 ~ {Fire:20s,Motion:[0.0d,-1.0d,0.0d]}

kill @s