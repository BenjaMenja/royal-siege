execute at @s[tag=dinnersreadyred] run tag @p[team=Red,scores={Ultimate=21}] add dinnerTargetRed

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed1"],Item:{id:"minecraft:cooked_beef",Count:1b}}

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~-1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed2"],Item:{id:"minecraft:cooked_porkchop",Count:1b}}

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~ ~1.5 ~1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed3"],Item:{id:"minecraft:cake",Count:1b}}

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~ ~1.5 ~-1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed4"],Item:{id:"minecraft:golden_carrot",Count:1b}}

execute at @s[tag=dinnersreadyblue] run tag @p[team=Blue,scores={Ultimate=21}] add dinnerTargetBlue

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue1"],Item:{id:"minecraft:cooked_beef",Count:1b}}

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~-1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue2"],Item:{id:"minecraft:cooked_porkchop",Count:1b}}

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~ ~1.5 ~1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue3"],Item:{id:"minecraft:cake",Count:1b}}

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~ ~1.5 ~-1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue4"],Item:{id:"minecraft:golden_carrot",Count:1b}}

execute as @a[tag=dinnerTargetRed] run tellraw @a [{"selector":"@s"},{"text":" is serving up dinner!"}]

execute as @a[tag=dinnerTargetBlue] run tellraw @a [{"selector":"@s"},{"text":" is serving up dinner!"}]

execute at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 0
