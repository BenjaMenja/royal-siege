execute unless entity @a[scores={Kit=0},team=!spectator] unless entity @a[scores={ultCheck=0},team=!spectator] run tag @a add startToReady

execute if entity @a[scores={Kit=0},team=!spectator] run tellraw @a [{"text":"The following people need to choose a class: ","color":"green"},{"selector":"@a[scores={Kit=0}]"}]

execute if entity @a[scores={ultCheck=0},team=!spectator] run tellraw @a [{"text":"The following people need to choose an ultimate: ","color":"green"},{"selector":"@a[scores={ultCheck=0}]"}]

execute if entity @a[tag=startToReady] run tellraw @a [{"text":"Everyone has chosen a character!\nEveryone must now ready up by ","color":"aqua"},{"text":"[Clicking Here]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to ready yourself up!","color":"green"}]},"clickEvent":{"action":"run_command","value":"/trigger textClick set 127"}},{"text":". Once everyone is readied up, there will be a 5 second delay before the match starts!","color":"aqua"}]

scoreboard players reset #startbutton spawnStuff