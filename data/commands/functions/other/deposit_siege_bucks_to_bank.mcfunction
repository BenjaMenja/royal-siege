$execute if score @s textClick matches 182..185 unless score @s Money matches $(siege_bucks).. run tellraw @s {"text":"You don't have enough Siege Bucks to make a deposit!","color":"red"}

$execute if score @s[team=Red] textClick matches 182..185 if score @s[team=Red] Money matches $(siege_bucks).. run scoreboard players add #red siegeBank $(siege_bucks)

$execute if score @s[team=Blue] textClick matches 182..185 if score @s[team=Blue] Money matches $(siege_bucks).. run scoreboard players add #blue siegeBank $(siege_bucks)

$execute if score @s textClick matches 182..185 if score @s Money matches $(siege_bucks).. run scoreboard players remove @s Money $(siege_bucks)

execute if score @s[team=Red] textClick matches 186 run scoreboard players operation #red siegeBank += @s Money

execute if score @s[team=Blue] textClick matches 186 run scoreboard players operation #blue siegeBank += @s Money

execute if score @s textClick matches 186 run scoreboard players set @s Money 0