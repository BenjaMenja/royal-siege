summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"block obsidian",Tags:["mShowerPoint"],Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:201,DurationOnUse:0f}

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mShowerAbove"],Radius:1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:201,DurationOnUse:0f}

playsound entity.ender_dragon.ambient master @a[distance=..20] ~ ~ ~ 1 0

kill @s

tellraw @a [{"selector":"@p[scores={Kit=12,Ultimate=23}]"},{"text":" has summoned a meteor shower!"}]