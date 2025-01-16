#Add to total games played

scoreboard players add #gamesplayedTDM classInfo 1

#Get amount of each class played in the match

execute as @a[scores={Kit=1}] run scoreboard players add #warriortempTDM classInfo 1

execute as @a[scores={Kit=2}] run scoreboard players add #ninjatempTDM classInfo 1

execute as @a[scores={Kit=3}] run scoreboard players add #guardiantempTDM classInfo 1

execute as @a[scores={Kit=4}] run scoreboard players add #angeltempTDM classInfo 1

execute as @a[scores={Kit=5}] run scoreboard players add #archertempTDM classInfo 1

execute as @a[scores={Kit=6}] run scoreboard players add #wizardtempTDM classInfo 1

execute as @a[scores={Kit=7}] run scoreboard players add #piratetempTDM classInfo 1

execute as @a[scores={Kit=8}] run scoreboard players add #enttempTDM classInfo 1

execute as @a[scores={Kit=9}] run scoreboard players add #poseidontempTDM classInfo 1

execute as @a[scores={Kit=10}] run scoreboard players add #robottempTDM classInfo 1

execute as @a[scores={Kit=11}] run scoreboard players add #cheftempTDM classInfo 1

execute as @a[scores={Kit=12}] run scoreboard players add #dragontempTDM classInfo 1

execute as @a[scores={Kit=13}] run scoreboard players add #gamblertempTDM classInfo 1

execute as @a[scores={Kit=14}] run scoreboard players add #astronauttempTDM classInfo 1

execute as @a[scores={Kit=15}] run scoreboard players add #firecrackertempTDM classInfo 1

execute as @a[scores={Kit=16}] run scoreboard players add #schoolnursetempTDM classInfo 1

execute as @a[scores={Kit=17}] run scoreboard players add #necromancertempTDM classInfo 1

#Add Ties

execute if score #warriortempTDM classInfo matches 2.. run scoreboard players add #warriortiesTDM classInfo 1

execute if score #ninjatempTDM classInfo matches 2.. run scoreboard players add #ninjatiesTDM classInfo 1

execute if score #guardiantempTDM classInfo matches 2.. run scoreboard players add #guardiantiesTDM classInfo 1

execute if score #angeltempTDM classInfo matches 2.. run scoreboard players add #angeltiesTDM classInfo 1

execute if score #archertempTDM classInfo matches 2.. run scoreboard players add #archertiesTDM classInfo 1

execute if score #wizardtempTDM classInfo matches 2.. run scoreboard players add #wizardtiesTDM classInfo 1

execute if score #piratetempTDM classInfo matches 2.. run scoreboard players add #piratetiesTDM classInfo 1

execute if score #enttempTDM classInfo matches 2.. run scoreboard players add #enttiesTDM classInfo 1

execute if score #poseidontempTDM classInfo matches 2.. run scoreboard players add #poseidontiesTDM classInfo 1

execute if score #robottempTDM classInfo matches 2.. run scoreboard players add #robottiesTDM classInfo 1

execute if score #cheftempTDM classInfo matches 2.. run scoreboard players add #cheftiesTDM classInfo 1

execute if score #dragontempTDM classInfo matches 2.. run scoreboard players add #dragontiesTDM classInfo 1

execute if score #gamblertempTDM classInfo matches 2.. run scoreboard players add #gamblertiesTDM classInfo 1

execute if score #astronauttempTDM classInfo matches 2.. run scoreboard players add #astronauttiesTDM classInfo 1

execute if score #firecrackertempTDM classInfo matches 2.. run scoreboard players add #firecrackertiesTDM classInfo 1

execute if score #schoolnursetempTDM classInfo matches 2.. run scoreboard players add #schoolnursetiesTDM classInfo 1

execute if score #necromancertempTDM classInfo matches 2.. run scoreboard players add #necromancertiesTDM classInfo 1

#Add Wins

execute if score #warriortempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=1}] run scoreboard players add #warriorwinsTDM classInfo 1

execute if score #ninjatempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=2}] run scoreboard players add #ninjawinsTDM classInfo 1

execute if score #guardiantempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=3}] run scoreboard players add #guardianwinsTDM classInfo 1

execute if score #angeltempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=4}] run scoreboard players add #angelwinsTDM classInfo 1

execute if score #archertempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=5}] run scoreboard players add #archerwinsTDM classInfo 1

execute if score #wizardtempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=6}] run scoreboard players add #wizardwinsTDM classInfo 1

execute if score #piratetempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=7}] run scoreboard players add #piratewinsTDM classInfo 1

execute if score #enttempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=8}] run scoreboard players add #entwinsTDM classInfo 1

execute if score #poseidontempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=9}] run scoreboard players add #poseidonwinsTDM classInfo 1

execute if score #robottempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=10}] run scoreboard players add #robotwinsTDM classInfo 1

execute if score #cheftempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=11}] run scoreboard players add #chefwinsTDM classInfo 1

execute if score #dragontempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=12}] run scoreboard players add #dragonwinsTDM classInfo 1

execute if score #gamblertempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=13}] run scoreboard players add #gamblerwinsTDM classInfo 1

execute if score #astronauttempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=14}] run scoreboard players add #astronautwinsTDM classInfo 1

execute if score #firecrackertempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=15}] run scoreboard players add #firecrackerwinsTDM classInfo 1

execute if score #schoolnursetempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=16}] run scoreboard players add #schoolnursewinsTDM classInfo 1

execute if score #necromancertempTDM classInfo matches 1 if entity @a[tag=win,scores={Kit=17}] run scoreboard players add #necromancerwinsTDM classInfo 1

#Add Losses

execute if score #warriortempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=1}] run scoreboard players add #warriorlossesTDM classInfo 1

execute if score #ninjatempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=2}] run scoreboard players add #ninjalossesTDM classInfo 1

execute if score #guardiantempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=3}] run scoreboard players add #guardianlossesTDM classInfo 1

execute if score #angeltempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=4}] run scoreboard players add #angellossesTDM classInfo 1

execute if score #archertempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=5}] run scoreboard players add #archerlossesTDM classInfo 1

execute if score #wizardtempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=6}] run scoreboard players add #wizardlossesTDM classInfo 1

execute if score #piratetempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=7}] run scoreboard players add #piratelossesTDM classInfo 1

execute if score #enttempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=8}] run scoreboard players add #entlossesTDM classInfo 1

execute if score #poseidontempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=9}] run scoreboard players add #poseidonlossesTDM classInfo 1

execute if score #robottempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=10}] run scoreboard players add #robotlossesTDM classInfo 1

execute if score #cheftempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=11}] run scoreboard players add #cheflossesTDM classInfo 1

execute if score #dragontempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=12}] run scoreboard players add #dragonlossesTDM classInfo 1

execute if score #gamblertempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=13}] run scoreboard players add #gamblerlossesTDM classInfo 1

execute if score #astronauttempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=14}] run scoreboard players add #astronautlossesTDM classInfo 1

execute if score #firecrackertempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=15}] run scoreboard players add #firecrackerlossesTDM classInfo 1

execute if score #schoolnursetempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=16}] run scoreboard players add #schoolnurselossesTDM classInfo 1

execute if score #necromancertempTDM classInfo matches 1 unless entity @a[tag=win,scores={Kit=17}] run scoreboard players add #necromancerlossesTDM classInfo 1

#Player Scores

execute if score #gamemode settings matches 1 as @a run function commands:admin/add_player_class_info_tdm

#Reset temp scores

scoreboard players reset #warriortempTDM classInfo

scoreboard players reset #ninjatempTDM classInfo

scoreboard players reset #guardiantempTDM classInfo

scoreboard players reset #angeltempTDM classInfo

scoreboard players reset #archertempTDM classInfo

scoreboard players reset #wizardtempTDM classInfo

scoreboard players reset #piratetempTDM classInfo

scoreboard players reset #enttempTDM classInfo

scoreboard players reset #poseidontempTDM classInfo

scoreboard players reset #robottempTDM classInfo

scoreboard players reset #cheftempTDM classInfo

scoreboard players reset #dragontempTDM classInfo

scoreboard players reset #gamblertempTDM classInfo

scoreboard players reset #astronauttempTDM classInfo

scoreboard players reset #firecrackertempTDM classInfo

scoreboard players reset #schoolnursetempTDM classInfo

scoreboard players reset #necromancertempTDM classInfo