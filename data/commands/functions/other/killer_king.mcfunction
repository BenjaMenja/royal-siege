execute if entity @s[team=Red] if entity @e[type=wither_skeleton,team=Red,tag=King,tag=!killerking] run clear @s carrot_on_a_stick{killerking:1b}

execute if entity @s[team=Blue] if entity @e[type=wither_skeleton,team=Blue,tag=King,tag=!killerking] run clear @s carrot_on_a_stick{killerking:1b}

execute if entity @s[team=Red] if entity @e[type=wither_skeleton,team=Red,tag=King,tag=!killerking] run tellraw @s {"text":"You powered your king up!","color":"aqua"}

execute if entity @s[team=Blue] if entity @e[type=wither_skeleton,team=Blue,tag=King,tag=!killerking] run tellraw @s {"text":"You powered your king up!","color":"aqua"}

execute if entity @s[team=Red] if entity @e[type=wither_skeleton,team=Red,tag=King,tag=killerking] run tellraw @s {"text":"Your King is already powered up!","color":"red"}

execute if entity @s[team=Blue] if entity @e[type=wither_skeleton,team=Blue,tag=King,tag=killerking] run tellraw @s {"text":"Your King is already powered up!","color":"red"}

execute if entity @s[team=Red] run tag @e[type=wither_skeleton,team=Red,tag=King] add killerking

effect give @e[type=wither_skeleton,team=Red,tag=King] strength 1000000 10 true

execute if entity @s[team=Blue] run tag @e[type=wither_skeleton,team=Blue,tag=King] add killerking

effect give @e[type=wither_skeleton,team=Blue,tag=King] strength 1000000 10 true
