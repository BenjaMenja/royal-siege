execute if entity @s[tag=terrorRed] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=19}]"},{"text":" has awoken the Terror of the Seas!"}]

execute if entity @s[tag=terrorBlue] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=19}]"},{"text":" has awoken the Terror of the Seas!"}]

execute if entity @s[tag=terrorRed] run playsound royalsiege:ultimates.terror_of_the_seas_friendly master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[tag=terrorRed] run playsound royalsiege:ultimates.terror_of_the_seas_enemy master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[tag=terrorBlue] run playsound royalsiege:ultimates.terror_of_the_seas_friendly master @a[team=Blue] ~ ~ ~ 100 1

execute if entity @s[tag=terrorBlue] run playsound royalsiege:ultimates.terror_of_the_seas_enemy master @a[team=Red] ~ ~ ~ 100 1

execute if entity @s[tag=terrorRed] run scoreboard players add @a[team=Red,scores={Ultimate=19}] ultsUsed 1

execute if entity @s[tag=terrorBlue] run scoreboard players add @a[team=Blue,scores={Ultimate=19}] ultsUsed 1

tag @s add stop