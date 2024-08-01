execute if score @s Money matches ..299 run tellraw @s {"text":"You don't have enough money to buy that!","color":"red"}

tag @s[scores={Money=300..}] add kingPurchase

execute if entity @s[tag=kingPurchase,team=Red] as @e[tag=King,team=Red,scores={kingActive=..0}] run tag @s add activated

execute if entity @s[tag=kingPurchase,team=Blue] as @e[tag=King,team=Blue,scores={kingActive=..0}] run tag @s add activated

execute if entity @s[tag=kingPurchase,team=Red] run scoreboard players add @e[tag=King,team=Red] kingActive 100

execute if entity @s[tag=kingPurchase,team=Blue] run scoreboard players add @e[tag=King,team=Blue] kingActive 100

execute at @e[tag=activated] run playsound entity.ravager.roar master @a[distance=..10] ~ ~ ~ 1 0.5

execute if entity @s[tag=kingPurchase,team=Red] as @e[tag=King,team=Red] run data merge entity @s {attributes:[{id:"minecraft:generic.movement_speed",base:0.3}]}

execute if entity @s[tag=kingPurchase,team=Blue] as @e[tag=King,team=Blue] run data merge entity @s {attributes:[{id:"minecraft:generic.movement_speed",base:0.3}]}

tag @e[tag=King] remove activated

scoreboard players remove @s[tag=kingPurchase] Money 300

tag @s remove kingPurchase



