execute if entity @s[team=Red] run kill @e[type=item,tag=HSRed]

execute if entity @s[team=Blue] run kill @e[type=item,tag=HSBlue]

execute if entity @s[team=Red] run scoreboard players set #redHS healstreak 0

execute if entity @s[team=Blue] run scoreboard players set #blueHS healstreak 0

tellraw @s {"text":"Your healstreak has ended!","color":"green"}

tag @s remove HSinit

tag @s remove healstreak

