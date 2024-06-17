execute unless score @s outrageKill matches 1.. run function commands:attributes/adds/add_outrage_slow

execute unless score @s outrageKill matches 1.. run function commands:attributes/adds/add_outrage_atkdmg

loot replace entity @s armor.legs loot commands:main_armor/dragon_leggings

tag @s remove outrage

scoreboard players reset @s outrageTimer

scoreboard players reset @s outrageKill