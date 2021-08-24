scoreboard players set #cardTemp cardDamage 0

scoreboard players operation #cardTemp cardDamage += #3CardValue cardValue

scoreboard players operation #cardTemp cardDamage += #2CardValue cardValue

scoreboard players operation @s[tag=!handMade] cardDamage = #cardTemp cardDamage

tellraw @a[tag=cardShooter] {"text":"You rolled a full house!"}

tag @s add handMade