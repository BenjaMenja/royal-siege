execute if entity @s[tag=vaccinated] run return -1
scoreboard players set #hit rayVar 1
execute at @s run playsound entity.player.hurt_sweet_berry_bush master @s ~ ~ ~ 1 2
function commands:attributes/adds/add_vaccine_debuffs
clear @p[tag=vaccineUser] carrot[custom_data~{vaccine:1b}]


