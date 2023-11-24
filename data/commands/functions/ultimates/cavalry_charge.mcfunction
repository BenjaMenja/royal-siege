execute as @e[tag=redcavalry] at @s run summon horse ~ ~1 ~ {Team:"Red",Health:75f,Tame:1b,Variant:770,Tags:["RedHorse"],active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:1000000,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:75},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:-1.0},{Name:"horse.jump_strength",Base:1.2}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b}}

execute at @s[tag=redcavalry] run playsound royalsiege:ultimates.cavalry_charge_friendly master @a[team=Red] ~ ~ ~ 50 1

execute at @s[tag=redcavalry] run playsound royalsiege:ultimates.cavalry_charge_enemy master @a[team=Blue] ~ ~ ~ 50 1

execute if entity @e[tag=redcavalry] run tellraw @a [{"selector":"@a[scores={Ultimate=2},team=Red]"},{"text":" is bringing in the cavalry!"}]

execute if entity @e[tag=redcavalry] run tag @a[scores={Ultimate=2},team=Red] add cavalryAlive

kill @e[tag=redcavalry]

execute as @e[tag=bluecavalry] at @s run summon horse ~ ~1 ~ {Team:"Blue",Health:75f,Tame:1b,Variant:770,Tags:["BlueHorse"],active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:1000000,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:75},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:-1.0},{Name:"horse.jump_strength",Base:1.2}],SaddleItem:{id:"minecraft:saddle",Count:1b},ArmorItem:{id:"minecraft:diamond_horse_armor",Count:1b}}

execute at @s[tag=bluecavalry] run playsound royalsiege:ultimates.cavalry_charge_friendly master @a[team=Blue] ~ ~ ~ 50 1

execute at @s[tag=bluecavalry] run playsound royalsiege:ultimates.cavalry_charge_enemy master @a[team=Red] ~ ~ ~ 50 1

execute if entity @e[tag=bluecavalry] run tellraw @a [{"selector":"@a[scores={Ultimate=2},team=Blue]"},{"text":" is bringing in the cavalry!"}]

execute if entity @e[tag=bluecavalry] run tag @a[scores={Ultimate=2},team=Blue] add cavalryAlive

kill @e[tag=bluecavalry]