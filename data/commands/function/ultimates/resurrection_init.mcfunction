execute if entity @s[team=Red] if entity @e[type=marker,distance=..3,tag=resSoulRed] run tag @s add resurrecting

execute if entity @s[team=Blue] if entity @e[type=marker,distance=..3,tag=resSoulBlue] run tag @s add resurrecting

function commands:attributes/adds/add_resurrection_jump

function commands:attributes/adds/add_resurrection_slow

tellraw @a [{"selector":"@s"},{"text":" is resurrecting an ally!"}]
