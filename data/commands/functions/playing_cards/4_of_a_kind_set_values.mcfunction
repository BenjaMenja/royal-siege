scoreboard players operation #cardTemp cardDamage += #cardTemp cardValue

scoreboard players operation #cardTemp cardDamage *= #lowestCard cardValue

execute as @e[type=item,tag=pCard,tag=!stop] run scoreboard players operation @s[tag=!handMade] cardDamage = #cardTemp cardDamage

tellraw @a[tag=cardShooter] {"text":"You rolled a 4 of a kind!"}

tag @s add handMade

