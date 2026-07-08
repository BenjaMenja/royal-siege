$execute if score @s[team=Red] textClick matches 187..190 unless score #red siegeBank matches $(siege_bucks).. run tellraw @s {"text":"You don't have enough Siege Bucks in your bank!","color":"red"}

$execute if score @s[team=Red] textClick matches 187..190 if score #red siegeBank matches $(siege_bucks).. at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

$execute if score @s[team=Red] textClick matches 187..190 if score #red siegeBank matches $(siege_bucks).. run scoreboard players add @s Money $(siege_bucks)

$execute if score @s[team=Red] textClick matches 187..190 if score #red siegeBank matches $(siege_bucks).. run scoreboard players remove #red siegeBank $(siege_bucks)

$execute if score @s[team=Blue] textClick matches 187..190 unless score #blue siegeBank matches $(siege_bucks).. run tellraw @s {"text":"You don't have enough Siege Bucks in your bank!","color":"red"}

$execute if score @s[team=Blue] textClick matches 187..190 if score #blue siegeBank matches $(siege_bucks).. at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

$execute if score @s[team=Blue] textClick matches 187..190 if score #blue siegeBank matches $(siege_bucks).. run scoreboard players add @s Money $(siege_bucks)

$execute if score @s[team=Blue] textClick matches 187..190 if score #blue siegeBank matches $(siege_bucks).. run scoreboard players remove #blue siegeBank $(siege_bucks)