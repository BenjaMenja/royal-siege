execute if entity @s[team=Red] unless entity @a[team=Red,tag=notAlive] run tellraw @s {"text":"You have no teammates currently dead!","color":"red"}

execute if entity @s[team=Red] unless entity @a[team=Red,tag=notAlive] run return -1

execute if entity @s[team=Blue] unless entity @a[team=Blue,tag=notAlive] run tellraw @s {"text":"You have no teammates currently dead!","color":"red"}

execute if entity @s[team=Blue] unless entity @a[team=Blue,tag=notAlive] run return -1

#Passed the check

execute if entity @s[team=Red] as @a[team=Red,tag=notAlive] at @s run function commands:other/reanimation_summon

execute if entity @s[team=Blue] as @a[team=Blue,tag=notAlive] at @s run function commands:other/reanimation_summon

playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.5 0

scoreboard players set @s reanimationTimer 1200