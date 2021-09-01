tellraw @s[scores={chipBet=1..5}] {"text":"Your bounty has freed themselves! Say goodbye to your money!","color":"aqua"}

tellraw @s[tag=hasBounty,tag=foundBounty] {"text":"Your bounty has been lifted!","color":"aqua"}

tag @s remove chipbet

tag @s remove hasBounty

tag @s remove foundBounty

scoreboard players reset @s chipBet

scoreboard players reset @s betChipTimer