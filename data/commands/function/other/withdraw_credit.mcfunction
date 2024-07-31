execute at @s[team=Red] if score #red corruptBank matches 1.. run function commands:entities/corrupt_credit

execute at @s[team=Blue] if score #blue corruptBank matches 1.. run function commands:entities/corrupt_credit

execute at @s[team=Red] if score #red corruptBank matches ..0 run tellraw @s {"text":"You have no credits in your bank!","color":"red"}

execute at @s[team=Blue] if score #blue corruptBank matches ..0 run tellraw @s {"text":"You have no credits in your bank!","color":"red"}

execute if score #red corruptBank matches 1.. run scoreboard players remove #red corruptBank 1

execute if score #blue corruptBank matches 1.. run scoreboard players remove #blue corruptBank 1