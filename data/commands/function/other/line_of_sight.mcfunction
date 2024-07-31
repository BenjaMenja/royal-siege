execute unless entity @a[tag=inLOS] facing entity @p[tag=!LOSfound] feet anchored eyes run function commands:raycasts/line_of_sight_start_ray

tag @p[tag=!LOSfound] add LOSfound

execute if entity @a[limit=1,tag=!LOSfound] run function commands:other/line_of_sight