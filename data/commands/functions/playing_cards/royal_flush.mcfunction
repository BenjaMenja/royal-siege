execute as @e[type=item,tag=pCard,tag=!stop] run scoreboard players set @s[tag=!handMade] cardDamage 250

execute as @e[type=item,tag=pCard,tag=!stop] run tag @s add royalFlush

tellraw @a[tag=cardShooter] {"text":"You rolled a royal flush!"}

tag @s add handMade

advancement grant @a[tag=cardShooter] only commands:character_challenges/poker_king