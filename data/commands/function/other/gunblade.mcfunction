execute if entity @s[scores={BurstTimer=20..},predicate=commands:holding/gunblade_burst] run tag @s add burst

execute if entity @s[scores={BurstTimer=16..},predicate=commands:holding/illegal_modifiers,predicate=commands:holding/gunblade_burst] run tag @s add burst

execute if entity @s[scores={PoisonTimer=160..},predicate=commands:holding/gunblade_poison] run tag @s add poison

execute if entity @s[scores={ToxinTimer=200..},predicate=commands:holding/gunblade_toxin] run tag @s add toxin

execute if entity @s[scores={DarknessTimer=280..},predicate=commands:holding/gunblade_darkness] run tag @s add darkness

execute if entity @s[scores={MidasTimer=280..},predicate=commands:holding/gunblade_midas] run tag @s add midas

execute if entity @s[scores={ExplosionTimer=280..},predicate=commands:holding/gunblade_explosive] run tag @s add explosion

scoreboard players reset @s eBulletHit

#Red Projectiles

execute at @s[team=Red,tag=burst,tag=multiBarrel] anchored eyes run summon arrow ^0.1 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Red,tag=burst] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Red,tag=burst] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Red,tag=burst] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Red,tag=burst,tag=multiBarrel] anchored eyes run summon arrow ^-0.1 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Red,tag=poison,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b}]}}}}

execute at @s[team=Red,tag=poison] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b}]}}}}

execute at @s[team=Red,tag=poison,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b}]}}}}

execute at @s[team=Red,tag=toxin,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","toxinBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1,show_particles:0b}]}}}}

execute at @s[team=Red,tag=toxin] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","toxinBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1,show_particles:0b}]}}}}

execute at @s[team=Red,tag=toxin,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","toxinBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1,show_particles:0b}]}}}}

execute at @s[team=Red,tag=darkness,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","darknessBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:60,show_particles:0b}]}}}}

execute at @s[team=Red,tag=darkness] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","darknessBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:60,show_particles:0b}]}}}}

execute at @s[team=Red,tag=darkness,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","darknessBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:60,show_particles:0b}]}}}}

execute at @s[team=Red,tag=midas,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","midasBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:3,show_particles:0b}]}}}}

execute at @s[team=Red,tag=midas] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","midasBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:3,show_particles:0b}]}}}}

execute at @s[team=Red,tag=midas,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","midasBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:3,show_particles:0b}]}}}}

execute at @s[team=Red,tag=explosion,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","explosiveBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:4,show_particles:0b}]}}}}

execute at @s[team=Red,tag=explosion] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","explosiveBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:4,show_particles:0b}]}}}}

execute at @s[team=Red,tag=explosion,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","redProj","explosiveBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:4,show_particles:0b}]}}}}

#Blue Projectiles

execute at @s[team=Blue,tag=burst,tag=multiBarrel] anchored eyes run summon arrow ^0.1 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Blue,tag=burst] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Blue,tag=burst] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Blue,tag=burst] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Blue,tag=burst,tag=multiBarrel] anchored eyes run summon arrow ^-0.1 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,bullet:1b}

execute at @s[team=Blue,tag=poison,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=poison] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=poison,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=toxin,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","toxinBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=toxin] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","toxinBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=toxin,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","toxinBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=darkness,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","darknessBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:60,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=darkness] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","darknessBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:60,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=darkness,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","darknessBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:darkness",amplifier:0,duration:60,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=midas,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","midasBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:3,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=midas] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","midasBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:3,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=midas,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","midasBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:3,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=explosion,tag=multiBarrel] anchored eyes run summon arrow ^-0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","explosiveBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:4,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=explosion] anchored eyes run summon arrow ^ ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","explosiveBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:4,show_particles:0b}]}}}}

execute at @s[team=Blue,tag=explosion,tag=multiBarrel] anchored eyes run summon arrow ^0.05 ^ ^1 {Motion:[0.0,0.0,0.0],Owner:[I;0,144,0,101],Tags:["bullet","blueProj","explosiveBullet"],NoGravity:1b,damage:3.1d,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:luck",amplifier:0,duration:4,show_particles:0b}]}}}}

#Projectile Motion

execute at @s[tag=burst] run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 2

execute at @s[tag=poison] run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 2

execute at @s[tag=toxin] run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 2

execute at @s[tag=darkness] run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 2

execute at @s[tag=midas] run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 2

execute at @s[tag=explosion] run playsound entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 2

execute at @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:poison",amplifier:0b,duration:100}]}] run particle dust{color:[0.631,0.000,1.000],scale:1} ~ ~ ~ 0 0 0 1 0 force

execute at @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:luck",amplifier:0b,duration:1}]}] run particle dust{color:[0.047,0.361,0.000],scale:1} ~ ~ ~ 0 0 0 1 0 force

execute at @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:luck",amplifier:0b,duration:2}]}] run particle dust{color:[0.000,1.000,1.000],scale:1} ~ ~ ~ 0 0 0 1 0 force

execute at @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:luck",amplifier:0b,duration:3}]}] run particle dust{color:[0.749,0.702,0.000],scale:1} ~ ~ ~ 0 0 0 1 0 force

execute at @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:luck",amplifier:0b,duration:4}]}] run particle dust{color:[1.000,0.110,0.110],scale:1} ~ ~ ~ 0 0 0 1 0 force

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run data modify entity @s Owner set from entity @a[tag=shoot,limit=1] UUID

execute anchored eyes run execute store result score @s posX run data get entity @s Pos[0] 1000

execute anchored eyes run execute store result score @s posY run data get entity @s Pos[1] 1000

execute anchored eyes run execute store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players add @s posY 1620

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run execute store result score @s posX run data get entity @s Pos[0] 1000

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run execute store result score @s posY run data get entity @s Pos[1] 1000

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run execute store result score @s posZ run data get entity @s Pos[2] 1000

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run scoreboard players operation @s posX -= @a[tag=shoot,limit=1] posX 

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run scoreboard players operation @s posY -= @a[tag=shoot,limit=1] posY

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] run scoreboard players operation @s posZ -= @a[tag=shoot,limit=1] posZ 

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] store result entity @s Motion[0] double 0.003 run scoreboard players get @s posX

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] store result entity @s Motion[1] double 0.003 run scoreboard players get @s posY

execute as @e[type=arrow,tag=bullet,distance=..3,tag=!stop] store result entity @s Motion[2] double 0.003 run scoreboard players get @s posZ

tag @e[type=arrow,tag=bullet] add stop

scoreboard players set @s[scores={BurstTimer=20..},tag=shoot,tag=burst] BurstTimer 0

scoreboard players set @s[scores={BurstTimer=16..},tag=shoot,tag=burst,predicate=commands:holding/illegal_modifiers] BurstTimer 0

scoreboard players set @s[scores={PoisonTimer=160..},tag=shoot,tag=poison] PoisonTimer 0

scoreboard players set @s[scores={ToxinTimer=200..},tag=shoot,tag=toxin] ToxinTimer 0

scoreboard players set @s[scores={DarknessTimer=280..},tag=shoot,tag=darkness] DarknessTimer 0

scoreboard players set @s[scores={MidasTimer=280..},tag=shoot,tag=midas] MidasTimer 0

scoreboard players set @s[scores={ExplosionTimer=280..},tag=shoot,tag=explosion] ExplosionTimer 0

clear @s[tag=burst] gunpowder[custom_data~{gunbladeammo:1b}] 1

clear @s[tag=poison] gunpowder[custom_data~{gunbladeammo:1b}] 4

clear @s[tag=toxin] gunpowder[custom_data~{gunbladeammo:1b}] 4

clear @s[tag=darkness] gunpowder[custom_data~{gunbladeammo:1b}] 4

clear @s[tag=midas] gunpowder[custom_data~{gunbladeammo:1b}] 4

clear @s[tag=explosion] gunpowder[custom_data~{gunbladeammo:1b}] 4

tag @s remove shoot

tag @s remove burst

tag @s remove poison

tag @s remove toxin

tag @s remove darkness

tag @s remove midas

tag @s remove explosion

