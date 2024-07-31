scoreboard players set @s RSAttr.Rooted 1

scoreboard players set @s RSAttr.NoAtkDmg 1

tag @s remove rebooting

scoreboard players reset @s Rebooting

tellraw @s {"text":"System Reboot Interrupted...","color":"red"}