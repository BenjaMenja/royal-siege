attribute @s[tag=counterlevel1] minecraft:generic.attack_damage modifier add 2-0-246-100-0 2 add_value

attribute @s[tag=counterlevel2] minecraft:generic.attack_damage modifier add 2-0-246-100-0 4 add_value

attribute @s[tag=counterlevel3] minecraft:generic.attack_damage modifier add 2-0-246-100-0 6 add_value

tag @s remove counterlevel1

tag @s remove counterlevel2

tag @s remove counterlevel3

scoreboard players set @s RSAttr.CounterAtkDmg 0