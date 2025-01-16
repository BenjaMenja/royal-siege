execute if entity @s[team=Red] unless entity @a[team=Red,tag=notAlive] run tellraw @s {"text":"You have no teammates currently dead!","color":"red"}

execute if entity @s[team=Red] unless entity @a[team=Red,tag=notAlive] run return -1

execute if entity @s[team=Blue] unless entity @a[team=Blue,tag=notAlive] run tellraw @s {"text":"You have no teammates currently dead!","color":"red"}

execute if entity @s[team=Blue] unless entity @a[team=Blue,tag=notAlive] run return -1

#Passed the check

execute if entity @s[team=Red] as @a[team=Red,tag=notAlive] run function commands:other/reanimation_summon

execute if entity @s[team=Blue] as @a[team=Blue,tag=notAlive] run function commands:other/reanimation_summon

scoreboard players set @s reanimationTimer 1200