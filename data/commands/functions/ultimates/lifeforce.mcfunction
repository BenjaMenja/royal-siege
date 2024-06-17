execute at @s[team=Red] as @a[team=Red] run function commands:attributes/adds/add_lifeforce_maxhp

execute at @s[team=Red] run effect give @a[team=Red] instant_health 1 1 true

execute at @s[team=Red] run effect give @a[team=Red] regeneration 10 1 true

execute at @s[team=Red] at @a[team=Red] run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0.3 2

execute at @s[team=Red] run playsound royalsiege:ultimates.lifeforce_friendly master @a[team=Red] ~ ~ ~ 50 1

execute at @s[team=Red] run playsound royalsiege:ultimates.lifeforce_enemy master @a[team=Blue] ~ ~ ~ 50 1

execute if entity @s[team=Red] run scoreboard players reset #angelspellsred voicelineCD

execute at @s[team=Blue] as @a[team=Blue] run function commands:attributes/adds/add_lifeforce_maxhp

execute at @s[team=Blue] run effect give @a[team=Blue] instant_health 1 1 true

execute at @s[team=Blue] run effect give @a[team=Blue] regeneration 10 1 true

execute at @s[team=Blue] at @a[team=Blue] run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0.3 2

execute at @s[team=Blue] run playsound royalsiege:ultimates.lifeforce_friendly master @a[team=Blue] ~ ~ ~ 50 1

execute at @s[team=Blue] run playsound royalsiege:ultimates.lifeforce_enemy master @a[team=Red] ~ ~ ~ 50 1

execute if entity @s[team=Blue] run scoreboard players reset #angelspellsblue voicelineCD

execute if entity @s[team=Red] at @a[team=Red] run particle happy_villager ~ ~ ~ 1 1 1 20 100

execute if entity @s[team=Blue] at @a[team=Blue] run particle happy_villager ~ ~ ~ 1 1 1 20 100

tellraw @a [{"selector":"@s"},{"text":"'s team is full of life!"}]

clear @s carrot_on_a_stick[custom_data~{lifeforce:1b}]