#Add Wins

execute if entity @s[tag=End,scores={Kit=1}] run scoreboard players add @s warWinsTDM 1

execute if entity @s[tag=End,scores={Kit=2}] run scoreboard players add @s ninWinsTDM 1

execute if entity @s[tag=End,scores={Kit=3}] run scoreboard players add @s grdWinsTDM 1

execute if entity @s[tag=End,scores={Kit=4}] run scoreboard players add @s angWinsTDM 1

execute if entity @s[tag=End,scores={Kit=5}] run scoreboard players add @s arcWinsTDM 1

execute if entity @s[tag=End,scores={Kit=6}] run scoreboard players add @s wizWinsTDM 1

execute if entity @s[tag=End,scores={Kit=7}] run scoreboard players add @s pirWinsTDM 1

execute if entity @s[tag=End,scores={Kit=8}] run scoreboard players add @s entWinsTDM 1

execute if entity @s[tag=End,scores={Kit=9}] run scoreboard players add @s posWinsTDM 1

execute if entity @s[tag=End,scores={Kit=10}] run scoreboard players add @s robWinsTDM 1

execute if entity @s[tag=End,scores={Kit=11}] run scoreboard players add @s chefWinsTDM 1

execute if entity @s[tag=End,scores={Kit=12}] run scoreboard players add @s draWinsTDM 1

execute if entity @s[tag=End,scores={Kit=13}] run scoreboard players add @s gamWinsTDM 1

#Add Losses

execute if entity @s[tag=!End,scores={Kit=1}] run scoreboard players add @s warLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=2}] run scoreboard players add @s ninLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=3}] run scoreboard players add @s grdLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=4}] run scoreboard players add @s angLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=5}] run scoreboard players add @s arcLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=6}] run scoreboard players add @s wizLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=7}] run scoreboard players add @s pirLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=8}] run scoreboard players add @s entLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=9}] run scoreboard players add @s posLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=10}] run scoreboard players add @s robLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=11}] run scoreboard players add @s chefLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=12}] run scoreboard players add @s draLossesTDM 1

execute if entity @s[tag=!End,scores={Kit=13}] run scoreboard players add @s gamLossesTDM 1

#Other

scoreboard players add @s gamesPlayedTDM 1