#Add Wins

execute if entity @s[tag=End,scores={Kit=1}] run scoreboard players add @s warWins 1

execute if entity @s[tag=End,scores={Kit=2}] run scoreboard players add @s ninWins 1

execute if entity @s[tag=End,scores={Kit=3}] run scoreboard players add @s grdWins 1

execute if entity @s[tag=End,scores={Kit=4}] run scoreboard players add @s angWins 1

execute if entity @s[tag=End,scores={Kit=5}] run scoreboard players add @s arcWins 1

execute if entity @s[tag=End,scores={Kit=6}] run scoreboard players add @s wizWins 1

execute if entity @s[tag=End,scores={Kit=7}] run scoreboard players add @s pirWins 1

execute if entity @s[tag=End,scores={Kit=8}] run scoreboard players add @s entWins 1

execute if entity @s[tag=End,scores={Kit=9}] run scoreboard players add @s posWins 1

execute if entity @s[tag=End,scores={Kit=10}] run scoreboard players add @s robWins 1

execute if entity @s[tag=End,scores={Kit=11}] run scoreboard players add @s chefWins 1

execute if entity @s[tag=End,scores={Kit=12}] run scoreboard players add @s draWins 1

execute if entity @s[tag=End,scores={Kit=13}] run scoreboard players add @s gamWins 1

#Add Losses

execute if entity @s[tag=!End,scores={Kit=1}] run scoreboard players add @s warLosses 1

execute if entity @s[tag=!End,scores={Kit=2}] run scoreboard players add @s ninLosses 1

execute if entity @s[tag=!End,scores={Kit=3}] run scoreboard players add @s grdLosses 1

execute if entity @s[tag=!End,scores={Kit=4}] run scoreboard players add @s angLosses 1

execute if entity @s[tag=!End,scores={Kit=5}] run scoreboard players add @s arcLosses 1

execute if entity @s[tag=!End,scores={Kit=6}] run scoreboard players add @s wizLosses 1

execute if entity @s[tag=!End,scores={Kit=7}] run scoreboard players add @s pirLosses 1

execute if entity @s[tag=!End,scores={Kit=8}] run scoreboard players add @s entLosses 1

execute if entity @s[tag=!End,scores={Kit=9}] run scoreboard players add @s posLosses 1

execute if entity @s[tag=!End,scores={Kit=10}] run scoreboard players add @s robLosses 1

execute if entity @s[tag=!End,scores={Kit=11}] run scoreboard players add @s chefLosses 1

execute if entity @s[tag=!End,scores={Kit=12}] run scoreboard players add @s draLosses 1

execute if entity @s[tag=!End,scores={Kit=13}] run scoreboard players add @s gamLosses 1

#Other

scoreboard players add @s gamesPlayed 1