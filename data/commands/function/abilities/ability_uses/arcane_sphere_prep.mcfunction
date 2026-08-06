tag @s add arcaneSphere

execute as @e[type=item,tag=arcaneSphereProj] if score @s UUID = @a[tag=arcaneSphere,limit=1] UUID run function commands:abilities/ability_uses/arcane_sphere_redirect

execute if entity @s[tag=!arcaneSphereRedirect] run function commands:abilities/ability_uses/arcane_sphere_shoot

tag @s remove arcaneSphere

tag @s remove arcaneSphereRedirect