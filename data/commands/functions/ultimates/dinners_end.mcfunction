execute if entity @s[team=Red] run kill @e[type=item,tag=dinnerItemRed]

execute if entity @s[team=Blue] run kill @e[type=item,tag=dinnerItemBlue]

tag @s remove dinnerTargetRed

tag @s remove dinnerTargetBlue

scoreboard players reset @s dinnerEnd
