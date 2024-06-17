execute if entity @s[team=Red] as @a[team=Red,distance=..10] run function commands:attributes/adds/add_rocket_booster_speed

execute if entity @s[team=Blue] as @a[team=Blue,distance=..10] run function commands:attributes/adds/add_rocket_booster_speed

#Playsound goes here#

clear @s carrot_on_a_stick[custom_data~{rocketboosters:1b}]