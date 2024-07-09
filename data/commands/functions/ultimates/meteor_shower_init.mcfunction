summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:obsidian"},Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:201,DurationOnUse:0f,Tags:["mShowerPoint"]}

summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"dust",color:[0.000,0.000,0.000],scale:1},Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:201,DurationOnUse:0f,Tags:["mShowerAbove"]}

playsound entity.ender_dragon.ambient master @a[distance=..20] ~ ~ ~ 1 0

kill @s

scoreboard players add @p[scores={Kit=12,Ultimate=23}] ultsUsed 1

tellraw @a [{"selector":"@p[scores={Kit=12,Ultimate=23}]"},{"text":" has summoned a meteor shower!"}]