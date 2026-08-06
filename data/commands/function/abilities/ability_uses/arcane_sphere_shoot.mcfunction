execute at @s[team=Red] anchored eyes run summon minecraft:item ^ ^ ^1 {Tags:["arcaneSphereProj","arcaneSphereProjRed","redProj"],Motion:[0.0,0.0,0.0],Item:{id:"fire_charge",components:{item_model:"commands:arcane_sphere"}},PickupDelay:32767,NoGravity:1b}

execute at @s[team=Blue] anchored eyes run summon minecraft:item ^ ^ ^1 {Tags:["arcaneSphereProj","arcaneSphereProjBlue","blueProj"],Motion:[0.0,0.0,0.0],Item:{id:"fire_charge",components:{item_model:"commands:arcane_sphere"}},PickupDelay:32767,NoGravity:1b}

execute as @e[tag=arcaneSphereProj,tag=!stop] run scoreboard players operation @s UUID = @a[tag=arcaneSphere,limit=1] UUID

execute store result score @s posX run data get entity @s Pos[0] 1000

execute store result score @s posY run data get entity @s Pos[1] 1000

execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[sort=nearest,tag=arcaneSphereProj,tag=!stop] store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[sort=nearest,tag=arcaneSphereProj,tag=!stop] store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[sort=nearest,tag=arcaneSphereProj,tag=!stop] store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[tag=arcaneSphereProj,tag=!stop] run scoreboard players operation @s posX -= @a[tag=arcaneSphere,limit=1] posX

execute as @e[tag=arcaneSphereProj,tag=!stop] run scoreboard players operation @s posY -= @a[tag=arcaneSphere,limit=1] posY

execute as @e[tag=arcaneSphereProj,tag=!stop] run scoreboard players operation @s posZ -= @a[tag=arcaneSphere,limit=1] posZ

execute as @e[tag=arcaneSphereProj,tag=!stop] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s posX

execute as @e[tag=arcaneSphereProj,tag=!stop] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s posY

execute as @e[tag=arcaneSphereProj,tag=!stop] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s posZ

tag @e[tag=arcaneSphereProj] add stop