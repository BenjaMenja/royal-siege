$execute if entity @s[tag=redProj] run effect give @a[distance=..4,team=Blue] poison $(value) 0 false

$execute if entity @s[tag=redProj] run effect give @a[distance=..4,team=Blue] darkness $(value) 0 false

$execute if entity @s[tag=blueProj] run effect give @a[distance=..4,team=Red] poison $(value) 0 false

$execute if entity @s[tag=blueProj] run effect give @a[distance=..4,team=Red] darkness $(value) 0 false

playsound block.glass.break master @a ~ ~ ~ 0.5 1.5

kill @s