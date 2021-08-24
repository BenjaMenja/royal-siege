scoreboard players set #cardExists cardTemp 0

execute as @e[type=item,tag=pCard,tag=!stop] if score @s cardValue = #cardTemp cardValue run scoreboard players set #cardExists cardTemp 1

execute if score #cardExists cardTemp matches 1 run scoreboard players add #cardStraight cardValue 1

execute if score #cardExists cardTemp matches 0 run scoreboard players set #cardStraight cardValue 0

scoreboard players set #cardTemp cardSuite 1

function commands:playing_cards/flush_calc

execute unless entity @s[tag=handMade] if score #cardStraight cardValue matches 5.. if score #hasFlush cardTemp matches 1.. run function commands:playing_cards/straight_flush_set_values

execute if score #cardStraight cardValue matches 5.. unless score #hasFlush cardTemp matches 1.. unless entity @e[tag=highestCardValue] run scoreboard players set #highestCard cardValue 0

execute unless entity @s[tag=handMade] if score #cardStraight cardValue matches 5.. unless score #hasFlush cardTemp matches 1.. run function commands:playing_cards/straight_set_values

scoreboard players add #cardTemp cardValue 1

execute unless score #cardTemp cardValue matches 14.. run function commands:playing_cards/straight_and_flush_calc