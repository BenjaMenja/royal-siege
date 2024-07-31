execute if entity @s[team=Blue] if score #blueking kingAttackCD matches 40.. run tellraw @a[team=Blue] ["",{"text":"Blue king is being Attacked!","color":"blue"}]

execute if entity @s[team=Blue] if score #blueking kingAttackCD matches 40.. run playsound block.anvil.place master @a[team=Blue] ~ ~ ~ 100 2

execute if entity @s[team=Red] if score #redking kingAttackCD matches 40.. run tellraw @a[team=Red] ["",{"text":"Red king is being Attacked!","color":"red"}]

execute if entity @s[team=Red] if score #redking kingAttackCD matches 40.. run playsound block.anvil.place master @a[team=Red] ~ ~ ~ 100 2

execute if entity @s[team=Red] if score #redking kingAttackCD matches 40.. run scoreboard players reset #redking kingAttackCD

execute if entity @s[team=Blue] if score #blueking kingAttackCD matches 40.. run scoreboard players reset #blueking kingAttackCD

scoreboard players set @s Defend 0