execute at @s run particle dust 0.933 1.000 0.000 1 ~ ~1 ~-0.5 0.5 0.7 0 0 5 force @a[tag=!protected]

execute at @s run particle dust 0.933 1.000 0.000 1 ~-0.5 ~1 ~ 0 0.7 0.5 0 5 force @a[tag=!protected]

execute at @s run particle dust 0.933 1.000 0.000 1 ~ ~1 ~0.5 0.5 0.7 0 0 5 force @a[tag=!protected]

execute at @s run particle dust 0.933 1.000 0.000 1 ~0.5 ~1 ~ 0 0.7 0.5 0 5 force @a[tag=!protected]
 
effect give @s resistance 1 2 true

scoreboard players add @s mBarrierDur 1

tellraw @s[scores={mBarrierDur=300..}] {"text":"Your magic barrier has been lifted!","color":"aqua"}

tag @s[scores={mBarrierDur=300..}] remove protected

scoreboard players reset @s[scores={mBarrierDur=300..}] mBarrierDur