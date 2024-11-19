execute if entity @a[team=Blue,predicate=commands:in_mortar_blue] run summon minecraft:snowball 14.0 61.5 -1992.0 {Tags:["mortarshell"],Motion:[0.03,1.0,1.0],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;735944046,-692959670,-1098608561,-278705977],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjVkZmZjNWU1M2M4MzczODVmNWQ3ODYzOTM1YmM1YWZhM2U0YTgxNzZhZTUyZTJmOGQ3ZDc5N2M5NTJlM2YifX19"}]}}}}

execute if entity @a[team=Blue,predicate=commands:in_mortar_blue] run playsound entity.generic.explode master @a ~ ~ ~ 0.5 2

execute if entity @a[team=Red,predicate=commands:in_mortar_red] run summon minecraft:snowball 25.0 61.5 -1949.0 {Tags:["mortarshell"],Motion:[-0.03,1.0,-1.0],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;735944046,-692959670,-1098608561,-278705977],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjVkZmZjNWU1M2M4MzczODVmNWQ3ODYzOTM1YmM1YWZhM2U0YTgxNzZhZTUyZTJmOGQ3ZDc5N2M5NTJlM2YifX19"}]}}}}

execute if entity @a[team=Red,predicate=commands:in_mortar_red] run playsound entity.generic.explode master @a ~ ~ ~ 0.5 2

execute if entity @a[team=Red,predicate=commands:in_mortar_red] run particle smoke 25.5 73 -1950.5 0 0.5 -0.5 1 100

execute as @a[team=Blue,predicate=commands:in_mortar_blue,limit=1,sort=random] at @s run ride @s mount @e[type=snowball,distance=..2,tag=mortarshell,limit=1]

execute as @a[team=Red,predicate=commands:in_mortar_red,limit=1,sort=random] at @s run ride @s mount @e[type=snowball,distance=..2,tag=mortarshell,limit=1]

data remove entity @s interaction