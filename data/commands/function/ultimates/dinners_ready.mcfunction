tag @s[team=Red] add dinnerTargetRed

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed1"],Item:{id:"minecraft:cooked_beef",count:1}}

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~-1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed2"],Item:{id:"minecraft:cooked_porkchop",count:1}}

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~ ~1.5 ~1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed3"],Item:{id:"minecraft:cake",count:1}}

execute as @a[tag=dinnerTargetRed] at @s run summon minecraft:item ~ ~1.5 ~-1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemRed","dinnerItemRed4"],Item:{id:"minecraft:golden_carrot",count:1}}

tag @s[team=Blue] add dinnerTargetBlue

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue1"],Item:{id:"minecraft:cooked_beef",count:1}}

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~-1 ~1.5 ~ {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue2"],Item:{id:"minecraft:cooked_porkchop",count:1}}

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~ ~1.5 ~1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue3"],Item:{id:"minecraft:cake",count:1}}

execute as @a[tag=dinnerTargetBlue] at @s run summon minecraft:item ~ ~1.5 ~-1 {NoGravity:1b,Health:1000,PickupDelay:32767,Tags:["dinnerItemBlue","dinnerItemBlue4"],Item:{id:"minecraft:golden_carrot",count:1}}

tellraw @a [{"selector":"@s"},{"text":" is serving up dinner!"}]

execute at @s run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 0

scoreboard players add @s ultsUsed 1

clear @s carrot[custom_data~{dinnersready:1b}]
