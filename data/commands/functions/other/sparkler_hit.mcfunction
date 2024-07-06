damage @s[tag=!sparkled] 7.5 commands:sparkler

execute if entity @s[tag=!sparkled] run summon small_fireball ~ ~2.1 ~ {Fire:20s,Motion:[0.0d,-1.0d,0.01d]}

kill @e[type=item,tag=sparkleritem,distance=..3]

tag @s add sparkled