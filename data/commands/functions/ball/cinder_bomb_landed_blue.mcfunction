kill @s

summon area_effect_cloud ~ ~ ~ {Particle:{type:"smoke"},Radius:4f,RadiusPerTick:-0.01f,Duration:100,Tags:["cindersmokeblue","cindersmoke"]}

scoreboard players set @e[type=area_effect_cloud,sort=nearest,tag=cindersmokered] cinderBombDuration 20

