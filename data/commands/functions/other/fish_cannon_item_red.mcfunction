effect give @s[nbt={Inventory:[{tag:{fishdamage:1b}}]}] instant_damage 1 0

effect give @s[nbt={Inventory:[{tag:{fishpoison:1b}}]}] poison 4 1 true

effect give @s[nbt={Inventory:[{tag:{fishnausea:1b}}]}] nausea 6 0 true

effect give @s[nbt={Inventory:[{tag:{fishslow:1b}}]}] slowness 3 1 true

execute at @s[nbt={Inventory:[{tag:{fishexplode:1b}}]}] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,power:[0.0,-1.0,0.0],Tags:["fm"]}

clear @s cod{fishdamage:1b}

clear @s salmon{fishslow:1b}

clear @s pufferfish{fishpoison:1b}

clear @s tropical_fish{fishexplode:1b}

clear @s scute{fishnausea:1b}

