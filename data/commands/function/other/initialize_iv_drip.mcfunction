execute if score @s ivDripTimer matches 1.. run kill @n[type=fishing_bobber,tag=]

tag @n[type=fishing_bobber,tag=] add ivdrip

execute if entity @s[team=Red] run tag @n[type=fishing_bobber,tag=ivdrip] add ivRed

execute if entity @s[team=Blue] run tag @n[type=fishing_bobber,tag=ivdrip] add ivBlue

