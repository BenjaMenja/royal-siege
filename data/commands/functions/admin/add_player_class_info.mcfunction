#Add Wins

execute if score #warriortemp classInfo matches 1 if entity @s[tag=End,scores={Kit=1}] run scoreboard players add @s warWins 1

execute if score #ninjatemp classInfo matches 1 if entity @s[tag=End,scores={Kit=2}] run scoreboard players add @s ninWins 1

execute if score #guardiantemp classInfo matches 1 if entity @s[tag=End,scores={Kit=3}] run scoreboard players add @s grdWins 1

execute if score #angeltemp classInfo matches 1 if entity @s[tag=End,scores={Kit=4}] run scoreboard players add @s angWins 1

execute if score #archertemp classInfo matches 1 if entity @s[tag=End,scores={Kit=5}] run scoreboard players add @s arcWins 1

execute if score #wizardtemp classInfo matches 1 if entity @s[tag=End,scores={Kit=6}] run scoreboard players add @s wizWins 1

execute if score #piratetemp classInfo matches 1 if entity @s[tag=End,scores={Kit=7}] run scoreboard players add @s pirWins 1

execute if score #enttemp classInfo matches 1 if entity @s[tag=End,scores={Kit=8}] run scoreboard players add @s entWins 1

execute if score #poseidontemp classInfo matches 1 if entity @s[tag=End,scores={Kit=9}] run scoreboard players add @s posWins 1

execute if score #robottemp classInfo matches 1 if entity @s[tag=End,scores={Kit=10}] run scoreboard players add @s robWins 1

execute if score #cheftemp classInfo matches 1 if entity @s[tag=End,scores={Kit=11}] run scoreboard players add @s chefWins 1

execute if score #dragontemp classInfo matches 1 if entity @s[tag=End,scores={Kit=12}] run scoreboard players add @s draWins 1

execute if score #gamblertemp classInfo matches 1 if entity @s[tag=End,scores={Kit=13}] run scoreboard players add @s gamWins 1

#Add Losses

execute if score #warriortemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=1}] run scoreboard players add @s warLosses 1

execute if score #ninjatemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=2}] run scoreboard players add @s ninLosses 1

execute if score #guardiantemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=3}] run scoreboard players add @s grdLosses 1

execute if score #angeltemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=4}] run scoreboard players add @s angLosses 1

execute if score #archertemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=5}] run scoreboard players add @s arcLosses 1

execute if score #wizardtemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=6}] run scoreboard players add @s wizLosses 1

execute if score #piratetemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=7}] run scoreboard players add @s pirLosses 1

execute if score #enttemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=8}] run scoreboard players add @s entLosses 1

execute if score #poseidontemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=9}] run scoreboard players add @s posLosses 1

execute if score #robottemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=10}] run scoreboard players add @s robLosses 1

execute if score #cheftemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=11}] run scoreboard players add @s chefLosses 1

execute if score #dragontemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=12}] run scoreboard players add @s draLosses 1

execute if score #gamblertemp classInfo matches 1 if entity @s[tag=!End,scores={Kit=13}] run scoreboard players add @s gamLosses 1

#Add Ties

execute if score #warriortemp classInfo matches 2.. if entity @s[scores={Kit=1}] run scoreboard players add @s warTies 1

execute if score #ninjatemp classInfo matches 2.. if entity @s[scores={Kit=2}] run scoreboard players add @s ninTies 1

execute if score #guardiantemp classInfo matches 2.. if entity @s[scores={Kit=3}] run scoreboard players add @s grdTies 1

execute if score #angeltemp classInfo matches 2.. if entity @s[scores={Kit=4}] run scoreboard players add @s angTies 1

execute if score #archertemp classInfo matches 2.. if entity @s[scores={Kit=5}] run scoreboard players add @s arcTies 1

execute if score #wizardtemp classInfo matches 2.. if entity @s[scores={Kit=6}] run scoreboard players add @s wizTies 1

execute if score #piratetemp classInfo matches 2.. if entity @s[scores={Kit=7}] run scoreboard players add @s pirTies 1

execute if score #enttemp classInfo matches 2.. if entity @s[scores={Kit=8}] run scoreboard players add @s entTies 1

execute if score #poseidontemp classInfo matches 2.. if entity @s[scores={Kit=9}] run scoreboard players add @s posTies 1

execute if score #robottemp classInfo matches 2.. if entity @s[scores={Kit=10}] run scoreboard players add @s robTies 1

execute if score #cheftemp classInfo matches 2.. if entity @s[scores={Kit=11}] run scoreboard players add @s chefTies 1

execute if score #dragontemp classInfo matches 2.. if entity @s[scores={Kit=12}] run scoreboard players add @s draTies 1

execute if score #gamblertemp classInfo matches 2.. if entity @s[scores={Kit=13}] run scoreboard players add @s gamTies 1

#Other

scoreboard players add @s gamesPlayed 1