tag @e[type=item,tag=pCard,limit=1,tag=!stop,tag=!found] add found

execute if score @e[tag=pCard,limit=1,tag=!stop,tag=!found] cardValue < #lowestCard cardValue run tag @e[type=item,tag=pCard,tag=!stop] remove lowestCardValue

execute if score @e[tag=pCard,limit=1,tag=!stop,tag=!found] cardValue < #lowestCard cardValue run tag @e[type=item,tag=pCard,limit=1,tag=!stop] add lowestCardValue

execute if score @e[tag=pCard,limit=1,tag=!stop,tag=!found] cardValue < #lowestCard cardValue run scoreboard players operation #lowestCard cardValue = @e[type=item,tag=pCard,limit=1,tag=!stop] cardValue

execute if entity @e[tag=pCard,limit=1,tag=!stop,tag=!found] run function commands:playing_cards/lowest_card_value