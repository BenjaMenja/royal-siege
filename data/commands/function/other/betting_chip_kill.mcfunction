execute if entity @s[scores={Kit=10},team=Red] run advancement grant @a[team=Blue,scores={chipBet=1..5}] only commands:hidden_advancements/thats_how_mafia_works

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=1}] Money 200

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=1}] totalSiegeBucks 200

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=2}] Money 400

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=2}] totalSiegeBucks 400

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=3}] Money 600

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=3}] totalSiegeBucks 600

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=4}] Money 1000

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=4}] totalSiegeBucks 1000

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=5}] Money 2000

execute if entity @s[team=Red] run scoreboard players add @a[team=Blue,scores={chipBet=5}] totalSiegeBucks 2000

execute if entity @s[team=Red] run scoreboard players reset @a[team=Blue,scores={Kit=13}] chipBet

execute if entity @s[team=Red] run scoreboard players reset @a[team=Blue,scores={Kit=13}] betChipTimer

execute if entity @s[team=Red] run scoreboard players reset @a[team=Red,tag=hasBounty] betChipTimer

execute if entity @s[team=Red] run tag @a[team=Blue,scores={Kit=13}] remove chipbet

execute if entity @s[team=Red] run tellraw @a[team=Blue] {"text":"Bounty kill secured! Your gambler might wanna check their bank account now...","color":"aqua"}

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=1}] Money 200

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=1}] totalSiegeBucks 200

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=2}] Money 400

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=2}] totalSiegeBucks 400

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=3}] Money 600

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=3}] totalSiegeBucks 600

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=4}] Money 1000

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=4}] totalSiegeBucks 1000

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=5}] Money 2000

execute if entity @s[team=Blue] run scoreboard players add @a[team=Red,scores={chipBet=5}] totalSiegeBucks 2000

execute if entity @s[team=Blue] run scoreboard players reset @a[team=Red,scores={Kit=13}] chipBet

execute if entity @s[team=Blue] run scoreboard players reset @a[team=Red,scores={Kit=13}] betChipTimer

execute if entity @s[team=Blue] run scoreboard players reset @a[team=Blue,tag=hasBounty] betChipTimer

execute if entity @s[team=Blue] run tag @a[team=Red,scores={Kit=13}] remove chipbet

execute if entity @s[team=Blue] run tellraw @a[team=Red] {"text":"Bounty kill secured! Your gambler might wanna check their bank account now...","color":"aqua"}

tag @s remove hasBounty

tag @s remove foundBounty

scoreboard players reset @s betChipTimer