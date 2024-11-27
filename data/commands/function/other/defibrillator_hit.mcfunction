execute if score @s[team=Red] Health matches 10.. run scoreboard players set @p[team=Red,scores={Kit=16}] defibrillatorTimer 100

execute if score @s[team=Blue] Health matches 10.. run scoreboard players set @p[team=Blue,scores={Kit=16}] defibrillatorTimer 100

execute if score @s[team=Red] Health matches 10.. run kill @n[type=item,tag=defibRed]

execute if score @s[team=Blue] Health matches 10.. run kill @n[type=item,tag=defibBlue]

execute if score @s Health matches 10.. run return -1

#Successful hit

effect give @s regeneration 3 3 true

playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

function commands:attributes/adds/add_defibrillator_slow

execute if entity @s[team=Red] run kill @n[type=item,tag=defibRed]

execute if entity @s[team=Blue] run kill @n[type=item,tag=defibBlue]