scoreboard players set #cardFlush cardSuite 0

execute as @e[type=item,tag=pCard,tag=!stop] if score @s cardSuite = #cardTemp cardSuite run scoreboard players add #cardFlush cardSuite 1

execute if score #cardFlush cardSuite matches 5.. run scoreboard players set #hasFlush cardTemp 1

scoreboard players add #cardTemp cardSuite 1

execute unless score #cardTemp cardSuite matches 5.. run function commands:playing_cards/flush_calc