attribute @s[tag=counterlevel1] minecraft:generic.attack_damage modifier add 2-0-246-100-0 "CounterAtkDmg" 2 add

attribute @s[tag=counterlevel2] minecraft:generic.attack_damage modifier add 2-0-246-100-0 "CounterAtkDmg" 4 add

attribute @s[tag=counterlevel3] minecraft:generic.attack_damage modifier add 2-0-246-100-0 "CounterAtkDmg" 6 add

tag @s remove counterlevel1

tag @s remove counterlevel2

tag @s remove counterlevel3

scoreboard players set @s RSAttr.CounterAtkDmg 0