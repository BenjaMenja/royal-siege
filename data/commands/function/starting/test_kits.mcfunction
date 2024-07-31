execute unless entity @a[scores={Kit=0},team=!spectator] unless entity @a[scores={ultCheck=0},team=!spectator] run setblock -1411 53 1211 redstone_block

execute if entity @a[scores={Kit=0},team=!spectator] run tellraw @a [{"text":"The following people need to choose a class: ","color":"green"},{"selector":"@a[scores={Kit=0}]","color":"red"}]

execute if entity @a[scores={ultCheck=0},team=!spectator] run tellraw @a [{"text":"The following people need to choose an ultimate: ","color":"green"},{"selector":"@a[scores={ultCheck=0}]","color":"red"}]