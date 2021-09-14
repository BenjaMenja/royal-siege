execute if entity @s[team=Blue] run tellraw @a[team=Red] {"text":"Virus Detected!","color":"red"}

execute if entity @s[team=Red] run tellraw @a[team=Blue] {"text":"Virus Detected!","color":"red"}

effect give @s slowness 5 15 true

effect give @s jump_boost 5 128 true

effect give @s weakness 5 80 true

execute at @s run summon lightning_bolt