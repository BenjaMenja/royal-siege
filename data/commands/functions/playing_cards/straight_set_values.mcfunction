function commands:playing_cards/highest_card_value

scoreboard players operation @s[tag=!handMade] cardDamage += #cardTemp cardValue

tellraw @a[tag=cardShooter] {"text":"You rolled a straight!"}

tag @e[type=item,tag=pCard,tag=!stop] add handMade