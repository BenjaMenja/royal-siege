kill @e[type=area_effect_cloud,distance=..20,tag=mushroom]

execute if entity @s[team=Red] run kill @e[type=area_effect_cloud,distance=..20,tag=smokeblue]

execute if entity @s[team=Blue] run kill @e[type=area_effect_cloud,distance=..20,tag=smoke]

kill @e[type=area_effect_cloud,distance=..20,tag=dRageCloud]

kill @e[type=area_effect_cloud,distance=..20,tag=inkCloud]

#Playsounds go here

scoreboard players set @s gasVacTimer 500