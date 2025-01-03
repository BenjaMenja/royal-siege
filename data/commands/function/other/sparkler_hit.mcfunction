execute if entity @e[type=item,tag=sparkleritem,tag=!sparklerupgrade,tag=!sparklerbigupgrade,distance=..3] run damage @s[tag=!sparkled] 7.5 commands:sparkler

execute if entity @e[type=item,tag=sparkleritem,tag=sparklerupgrade,distance=..3] run damage @s[tag=!sparkled] 9 commands:sparkler

execute if entity @e[type=item,tag=sparkleritem,tag=sparklerbigupgrade,distance=..3] run damage @s[tag=!sparkled] 11 commands:sparkler

execute if entity @s[tag=!sparkled] run summon small_fireball ~ ~2.1 ~ {Fire:20s,Motion:[0.0d,-1.0d,0.0d],Tags:["smf"]}

kill @e[type=item,tag=sparkleritem,distance=..3]

tag @s add sparkled