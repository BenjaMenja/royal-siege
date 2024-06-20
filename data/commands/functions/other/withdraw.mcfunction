execute at @s[scores={Money=150..,Kit=1..6}] run function commands:entities/siege_coin

execute at @s[scores={Money=200..,Kit=7}] run function commands:entities/siege_coin

execute at @s[scores={Money=150..,Kit=8..15}] run function commands:entities/siege_coin

tellraw @s[scores={Money=..149,Kit=1..6}] {"text":"You don't have enough money to do that!","color":"red"}

tellraw @s[scores={Money=..199,Kit=7}] {"text":"You don't have enough money to do that!","color":"red"}

tellraw @s[scores={Money=..149,Kit=8..15}] {"text":"You don't have enough money to do that!","color":"red"}

scoreboard players remove @s[scores={Money=150..,Kit=1..6}] Money 150

scoreboard players remove @s[scores={Money=200..,Kit=7}] Money 200

scoreboard players remove @s[scores={Money=150..,Kit=8..15}] Money 150
