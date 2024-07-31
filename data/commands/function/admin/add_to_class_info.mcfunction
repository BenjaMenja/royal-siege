#Add to total games played

scoreboard players add #gamesplayed classInfo 1

#Get amount of each class played in the match

execute as @a[scores={Kit=1}] run scoreboard players add #warriortemp classInfo 1

execute as @a[scores={Kit=2}] run scoreboard players add #ninjatemp classInfo 1

execute as @a[scores={Kit=3}] run scoreboard players add #guardiantemp classInfo 1

execute as @a[scores={Kit=4}] run scoreboard players add #angeltemp classInfo 1

execute as @a[scores={Kit=5}] run scoreboard players add #archertemp classInfo 1

execute as @a[scores={Kit=6}] run scoreboard players add #wizardtemp classInfo 1

execute as @a[scores={Kit=7}] run scoreboard players add #piratetemp classInfo 1

execute as @a[scores={Kit=8}] run scoreboard players add #enttemp classInfo 1

execute as @a[scores={Kit=9}] run scoreboard players add #poseidontemp classInfo 1

execute as @a[scores={Kit=10}] run scoreboard players add #robottemp classInfo 1

execute as @a[scores={Kit=11}] run scoreboard players add #cheftemp classInfo 1

execute as @a[scores={Kit=12}] run scoreboard players add #dragontemp classInfo 1

execute as @a[scores={Kit=13}] run scoreboard players add #gamblertemp classInfo 1

execute as @a[scores={Kit=14}] run scoreboard players add #astronauttemp classInfo 1

execute as @a[scores={Kit=15}] run scoreboard players add #firecrackertemp classInfo 1

#Add Ties

execute if score #warriortemp classInfo matches 2.. run scoreboard players add #warriorties classInfo 1

execute if score #ninjatemp classInfo matches 2.. run scoreboard players add #ninjaties classInfo 1

execute if score #guardiantemp classInfo matches 2.. run scoreboard players add #guardianties classInfo 1

execute if score #angeltemp classInfo matches 2.. run scoreboard players add #angelties classInfo 1

execute if score #archertemp classInfo matches 2.. run scoreboard players add #archerties classInfo 1

execute if score #wizardtemp classInfo matches 2.. run scoreboard players add #wizardties classInfo 1

execute if score #piratetemp classInfo matches 2.. run scoreboard players add #pirateties classInfo 1

execute if score #enttemp classInfo matches 2.. run scoreboard players add #entties classInfo 1

execute if score #poseidontemp classInfo matches 2.. run scoreboard players add #poseidonties classInfo 1

execute if score #robottemp classInfo matches 2.. run scoreboard players add #robotties classInfo 1

execute if score #cheftemp classInfo matches 2.. run scoreboard players add #chefties classInfo 1

execute if score #dragontemp classInfo matches 2.. run scoreboard players add #dragonties classInfo 1

execute if score #gamblertemp classInfo matches 2.. run scoreboard players add #gamblerties classInfo 1

execute if score #astronauttemp classInfo matches 2.. run scoreboard players add #astronautties classInfo 1

execute if score #firecrackertemp classInfo matches 2.. run scoreboard players add #firecrackerties classInfo 1

#Add Wins

execute if score #warriortemp classInfo matches 1 if entity @a[tag=win,scores={Kit=1}] run scoreboard players add #warriorwins classInfo 1

execute if score #ninjatemp classInfo matches 1 if entity @a[tag=win,scores={Kit=2}] run scoreboard players add #ninjawins classInfo 1

execute if score #guardiantemp classInfo matches 1 if entity @a[tag=win,scores={Kit=3}] run scoreboard players add #guardianwins classInfo 1

execute if score #angeltemp classInfo matches 1 if entity @a[tag=win,scores={Kit=4}] run scoreboard players add #angelwins classInfo 1

execute if score #archertemp classInfo matches 1 if entity @a[tag=win,scores={Kit=5}] run scoreboard players add #archerwins classInfo 1

execute if score #wizardtemp classInfo matches 1 if entity @a[tag=win,scores={Kit=6}] run scoreboard players add #wizardwins classInfo 1

execute if score #piratetemp classInfo matches 1 if entity @a[tag=win,scores={Kit=7}] run scoreboard players add #piratewins classInfo 1

execute if score #enttemp classInfo matches 1 if entity @a[tag=win,scores={Kit=8}] run scoreboard players add #entwins classInfo 1

execute if score #poseidontemp classInfo matches 1 if entity @a[tag=win,scores={Kit=9}] run scoreboard players add #poseidonwins classInfo 1

execute if score #robottemp classInfo matches 1 if entity @a[tag=win,scores={Kit=10}] run scoreboard players add #robotwins classInfo 1

execute if score #cheftemp classInfo matches 1 if entity @a[tag=win,scores={Kit=11}] run scoreboard players add #chefwins classInfo 1

execute if score #dragontemp classInfo matches 1 if entity @a[tag=win,scores={Kit=12}] run scoreboard players add #dragonwins classInfo 1

execute if score #gamblertemp classInfo matches 1 if entity @a[tag=win,scores={Kit=13}] run scoreboard players add #gamblerwins classInfo 1

execute if score #astronauttemp classInfo matches 1 if entity @a[tag=win,scores={Kit=14}] run scoreboard players add #astronautwins classInfo 1

execute if score #firecrackertemp classInfo matches 1 if entity @a[tag=win,scores={Kit=15}] run scoreboard players add #firecrackerwins classInfo 1

#Add Losses

execute if score #warriortemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=1}] run scoreboard players add #warriorlosses classInfo 1

execute if score #ninjatemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=2}] run scoreboard players add #ninjalosses classInfo 1

execute if score #guardiantemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=3}] run scoreboard players add #guardianlosses classInfo 1

execute if score #angeltemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=4}] run scoreboard players add #angellosses classInfo 1

execute if score #archertemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=5}] run scoreboard players add #archerlosses classInfo 1

execute if score #wizardtemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=6}] run scoreboard players add #wizardlosses classInfo 1

execute if score #piratetemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=7}] run scoreboard players add #piratelosses classInfo 1

execute if score #enttemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=8}] run scoreboard players add #entlosses classInfo 1

execute if score #poseidontemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=9}] run scoreboard players add #poseidonlosses classInfo 1

execute if score #robottemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=10}] run scoreboard players add #robotlosses classInfo 1

execute if score #cheftemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=11}] run scoreboard players add #cheflosses classInfo 1

execute if score #dragontemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=12}] run scoreboard players add #dragonlosses classInfo 1

execute if score #gamblertemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=13}] run scoreboard players add #gamblerlosses classInfo 1

execute if score #astronauttemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=14}] run scoreboard players add #astronautlosses classInfo 1

execute if score #firecrackertemp classInfo matches 1 unless entity @a[tag=win,scores={Kit=15}] run scoreboard players add #firecrackerlosses classInfo 1

#Player Scores

execute if score #gamemode settings matches 0 as @a run function commands:admin/add_player_class_info

#Reset temp scores

scoreboard players reset #warriortemp classInfo

scoreboard players reset #ninjatemp classInfo

scoreboard players reset #guardiantemp classInfo

scoreboard players reset #angeltemp classInfo

scoreboard players reset #archertemp classInfo

scoreboard players reset #wizardtemp classInfo

scoreboard players reset #piratetemp classInfo

scoreboard players reset #enttemp classInfo

scoreboard players reset #poseidontemp classInfo

scoreboard players reset #robottemp classInfo

scoreboard players reset #cheftemp classInfo

scoreboard players reset #dragontemp classInfo

scoreboard players reset #gamblertemp classInfo

scoreboard players reset #astronauttemp classInfo

scoreboard players reset #firecrackertemp classInfo