execute unless score @s outrageKill matches 1.. run function commands:attributes/adds/add_outrage_slow

execute unless score @s outrageKill matches 1.. run function commands:attributes/adds/add_outrage_atkdmg

function commands:attributes/clears/clear_outrage_atkdmg_up

tag @s remove outrage

scoreboard players reset @s outrageTimer

scoreboard players reset @s outrageKill