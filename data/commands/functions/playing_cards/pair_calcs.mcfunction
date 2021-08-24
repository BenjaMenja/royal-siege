scoreboard players set #numCards cardValue 0

execute as @e[type=item,tag=pCard,tag=!stop] if score @s cardValue = #cardTemp cardValue run scoreboard players add #numCards cardValue 1

execute if score #numCards cardValue matches 4.. run function commands:playing_cards/4_of_a_kind_set_values

execute if score #numCards cardValue matches 3 run scoreboard players add #threeCards cardValue 1

execute if score #numCards cardValue matches 3 run scoreboard players operation #3CardValue cardValue = #cardTemp cardValue

execute if score #numCards cardValue matches 2 run scoreboard players add #twoCards cardValue 1

execute if score #numCards cardValue matches 2 run scoreboard players operation #2CardValue cardValue = #cardTemp cardValue

scoreboard players add #cardTemp cardValue 1

execute unless score #cardTemp cardValue matches 14.. run function commands:playing_cards/pair_calcs