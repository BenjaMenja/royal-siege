execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {PickupDelay:32767,Tags:["mysteriousbrew","redProj"],Item:{id:"minecraft:splash_potion",count:1,components:{potion_contents:{custom_color:0}}}}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {PickupDelay:32767,Tags:["mysteriousbrew","blueProj"],Item:{id:"minecraft:splash_potion",count:1,components:{potion_contents:{custom_color:0}}}}

execute at @s run playsound minecraft:entity.splash_potion.throw master @s ~ ~ ~ 1 1

execute anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute store result score @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] posX run data get entity @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] Pos[0] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] posY run data get entity @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] Pos[1] 1000

execute store result score @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] posZ run data get entity @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] Pos[2] 1000

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] posX -= @s posX

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] posY -= @s posY

scoreboard players operation @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] posZ -= @s posZ

execute as @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] store result entity @s Motion[0] double 0.0008 run scoreboard players get @s posX

execute as @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] store result entity @s Motion[1] double 0.0008 run scoreboard players get @s posY

execute as @e[type=item,sort=nearest,limit=1,tag=mysteriousbrew,tag=!stop] store result entity @s Motion[2] double 0.0008 run scoreboard players get @s posZ

tag @e[type=item,tag=mysteriousbrew] add stop

clear @s carrot_on_a_stick[custom_data~{mysteriousbrew:1b}] 1
