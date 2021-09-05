#Add Wins

execute if score #warriortempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=1}] run scoreboard players add @s warWinsTDM 1

execute if score #ninjatempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=2}] run scoreboard players add @s ninWinsTDM 1

execute if score #guardiantempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=3}] run scoreboard players add @s grdWinsTDM 1

execute if score #angeltempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=4}] run scoreboard players add @s angWinsTDM 1

execute if score #archertempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=5}] run scoreboard players add @s arcWinsTDM 1

execute if score #wizardtempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=6}] run scoreboard players add @s wizWinsTDM 1

execute if score #piratetempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=7}] run scoreboard players add @s pirWinsTDM 1

execute if score #enttempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=8}] run scoreboard players add @s entWinsTDM 1

execute if score #poseidontempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=9}] run scoreboard players add @s posWinsTDM 1

execute if score #robottempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=10}] run scoreboard players add @s robWinsTDM 1

execute if score #cheftempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=11}] run scoreboard players add @s chefWinsTDM 1

execute if score #dragontempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=12}] run scoreboard players add @s draWinsTDM 1

execute if score #gamblertempTDM classInfo matches 1 if entity @s[tag=End,scores={Kit=13}] run scoreboard players add @s gamWinsTDM 1

#Add Losses

execute if score #warriortempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=1}] run scoreboard players add @s warLossesTDM 1

execute if score #ninjatempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=2}] run scoreboard players add @s ninLossesTDM 1

execute if score #guardiantempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=3}] run scoreboard players add @s grdLossesTDM 1

execute if score #angeltempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=4}] run scoreboard players add @s angLossesTDM 1

execute if score #archertempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=5}] run scoreboard players add @s arcLossesTDM 1

execute if score #wizardtempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=6}] run scoreboard players add @s wizLossesTDM 1

execute if score #piratetempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=7}] run scoreboard players add @s pirLossesTDM 1

execute if score #enttempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=8}] run scoreboard players add @s entLossesTDM 1

execute if score #poseidontempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=9}] run scoreboard players add @s posLossesTDM 1

execute if score #robottempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=10}] run scoreboard players add @s robLossesTDM 1

execute if score #cheftempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=11}] run scoreboard players add @s chefLossesTDM 1

execute if score #dragontempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=12}] run scoreboard players add @s draLossesTDM 1

execute if score #gamblertempTDM classInfo matches 1 if entity @s[tag=!End,scores={Kit=13}] run scoreboard players add @s gamLossesTDM 1

#Add Ties

execute if score #warriortempTDM classInfo matches 2.. if entity @s[scores={Kit=1}] run scoreboard players add @s warTiesTDM 1

execute if score #ninjatempTDM classInfo matches 2.. if entity @s[scores={Kit=2}] run scoreboard players add @s ninTiesTDM 1

execute if score #guardiantempTDM classInfo matches 2.. if entity @s[scores={Kit=3}] run scoreboard players add @s grdTiesTDM 1

execute if score #angeltempTDM classInfo matches 2.. if entity @s[scores={Kit=4}] run scoreboard players add @s angTiesTDM 1

execute if score #archertempTDM classInfo matches 2.. if entity @s[scores={Kit=5}] run scoreboard players add @s arcTiesTDM 1

execute if score #wizardtempTDM classInfo matches 2.. if entity @s[scores={Kit=6}] run scoreboard players add @s wizTiesTDM 1

execute if score #piratetempTDM classInfo matches 2.. if entity @s[scores={Kit=7}] run scoreboard players add @s pirTiesTDM 1

execute if score #enttempTDM classInfo matches 2.. if entity @s[scores={Kit=8}] run scoreboard players add @s entTiesTDM 1

execute if score #poseidontempTDM classInfo matches 2.. if entity @s[scores={Kit=9}] run scoreboard players add @s posTiesTDM 1

execute if score #robottempTDM classInfo matches 2.. if entity @s[scores={Kit=10}] run scoreboard players add @s robTiesTDM 1

execute if score #cheftempTDM classInfo matches 2.. if entity @s[scores={Kit=11}] run scoreboard players add @s chefTiesTDM 1

execute if score #dragontempTDM classInfo matches 2.. if entity @s[scores={Kit=12}] run scoreboard players add @s draTiesTDM 1

execute if score #gamblertempTDM classInfo matches 2.. if entity @s[scores={Kit=13}] run scoreboard players add @s gamTiesTDM 1

#Other

scoreboard players add @s gamesPlayedTDM 1