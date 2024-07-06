execute at @s[team=Red,tag=!wrenched] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_assault_spell_speed 

execute if entity @s[team=Red,tag=!wrenched] as @a[team=Red,tag=blessed] run function commands:attributes/adds/add_assault_spell_speed 

execute at @s[team=Red,tag=wrenched] run function commands:attributes/adds/add_assault_spell_speed_wrench

execute if entity @s[team=Red,tag=wrenched] as @a[team=Red,tag=blessed] run function commands:attributes/adds/add_assault_spell_speed_wrench

execute at @s[team=Red] as @a[team=Red,distance=..10] unless score @s Kit matches 4 run function commands:attributes/adds/add_assault_spell_atkdmg

execute if entity @s[team=Red] as @a[team=Red,tag=blessed] run function commands:attributes/adds/add_assault_spell_atkdmg

execute at @s[team=Blue,tag=!wrenched] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_assault_spell_speed 

execute if entity @s[team=Blue,tag=!wrenched] as @a[team=Blue,tag=blessed] run function commands:attributes/adds/add_assault_spell_speed 

execute at @s[team=Blue,tag=wrenched] run function commands:attributes/adds/add_assault_spell_speed_wrench

execute if entity @s[team=Blue,tag=wrenched] as @a[team=Blue,tag=blessed] run function commands:attributes/adds/add_assault_spell_speed_wrench

execute at @s[team=Blue] as @a[team=Blue,distance=..10] unless score @s Kit matches 4 run function commands:attributes/adds/add_assault_spell_atkdmg

execute if entity @s[team=Blue] as @a[team=Blue,tag=blessed] run function commands:attributes/adds/add_assault_spell_atkdmg

execute at @s run playsound entity.wither.hurt master @a[distance=..15] ~ ~ ~ 0.3 1.5

execute at @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities.assault_spell master @a[distance=..15,team=Red] ~ ~ ~ 0.3 1

execute at @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities.assault_spell master @a[distance=..15,team=Blue] ~ ~ ~ 0.3 1

execute if entity @s[team=Red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD

execute if entity @s[team=Blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD

scoreboard players set @s[scores={Kit=4}] HealerItems 500

tag @s remove wrenched