scoreboard players set #cardTemp cardDamage 0

execute as @e[type=item,tag=pCard,tag=!stop] run scoreboard players operation #cardTemp cardDamage += @s cardValue

scoreboard players operation #cardTemp cardDamage *= #2 constant

scoreboard players operation @s[tag=!handMade] cardDamage = #cardTemp cardDamage

scoreboard players set #straightFlush cardTemp 1

tellraw @a[tag=cardShooter] {"text":"You rolled a straight flush!"}

tag @s add handMade