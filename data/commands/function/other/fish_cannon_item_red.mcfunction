effect give @s[nbt={Inventory:[{components:{"minecraft:custom_data":{fishdamage:1b}}}]}] instant_damage 1 0

effect give @s[nbt={Inventory:[{components:{"minecraft:custom_data":{fishpoison:1b}}}]}] poison 4 1 true

effect give @s[nbt={Inventory:[{components:{"minecraft:custom_data":{fishnausea:1b}}}]}] nausea 6 0 true

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{fishslow:1b}}}]}] run function commands:attributes/adds/add_fish_cannon_slow

execute at @s[nbt={Inventory:[{components:{"minecraft:custom_data":{fishexplode:1b}}}]}] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,Motion:[0.0,-1.0,0.0],Tags:["fm"]}

clear @s cod[custom_data~{fishdamage:1b}]

clear @s salmon[custom_data~{fishslow:1b}]

clear @s pufferfish[custom_data~{fishpoison:1b}]

clear @s tropical_fish[custom_data~{fishexplode:1b}]

clear @s turtle_scute[custom_data~{fishnausea:1b}]
