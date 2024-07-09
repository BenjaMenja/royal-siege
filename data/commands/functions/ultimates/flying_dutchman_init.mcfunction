summon boat ~ ~9 ~ {Invulnerable:1b,NoGravity:1b,Tags:["flyingdutchman"]}

execute if entity @s[team=Red] as @a[limit=2,distance=..2,team=Red] at @s run ride @s mount @e[type=boat,limit=1,sort=nearest,tag=flyingdutchman]

execute if entity @s[team=Blue] as @a[limit=2,distance=..2,team=Blue] at @s run ride @s mount @e[type=boat,limit=1,sort=nearest,tag=flyingdutchman]

data modify entity @e[type=boat,limit=1,tag=flyingdutchman,tag=!stop] Rotation set from entity @s Rotation

tag @e[type=boat,limit=1,tag=flyingdutchman,tag=!stop] add stop

tellraw @a [{"selector":"@s"},{"text":" be pillaging the seven seas!"}]

scoreboard players add @s ultsUsed 1

clear @s carrot_on_a_stick[custom_data~{flyingdutchman:1b}]


