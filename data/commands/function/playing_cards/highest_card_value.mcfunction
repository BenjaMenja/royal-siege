tag @e[type=item,tag=pCard,limit=1,tag=!stop] add found

execute if score @e[tag=pCard,limit=1,tag=!stop,tag=!found] cardValue > #cardTemp cardValue run tag @e[type=item,tag=pCard,tag=!stop] remove highestCardValue

execute if score @e[tag=pCard,limit=1,tag=!stop,tag=!found] cardValue > #cardTemp cardValue run tag @e[type=item,tag=pCard,limit=1,tag=!stop] add highestCardValue

execute if score @e[tag=pCard,limit=1,tag=!stop,tag=!found] cardValue > #cardTemp cardValue run scoreboard players operation #cardTemp cardValue = @e[type=item,tag=pCard,limit=1,tag=!stop] cardValue

execute if entity @e[tag=pCard,limit=1,tag=!stop,tag=!found] run function commands:playing_cards/highest_card_value