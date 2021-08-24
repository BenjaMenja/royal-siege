execute if entity @s[team=Red] run teleport @a[limit=2,distance=..2,team=Red] ~ ~10 ~

execute if entity @s[team=Blue] run teleport @a[limit=2,distance=..2,team=Blue] ~ ~10 ~

summon boat ~ ~9 ~ {Invulnerable:1b,NoGravity:1b,Tags:["flyingdutchman"]}

data modify entity @e[type=boat,limit=1,tag=flyingdutchman,tag=!stop] Rotation set from entity @s Rotation

tag @e[type=boat,limit=1,tag=flyingdutchman,tag=!stop] add stop

tellraw @a [{"selector":"@s"},{"text":" be pillaging the seven seas!"}]

clear @s carrot_on_a_stick{flyingdutchman:1b}


