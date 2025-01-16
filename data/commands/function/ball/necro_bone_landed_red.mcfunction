particle item{item:"minecraft:bone"} ~ ~ ~ 0.3 0.3 0.3 1 5

playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~ 0.5 2

execute as @a[team=Blue,distance=..2.5] at @s run damage @s 5 commands:necro_bone

execute if entity @a[team=Blue,distance=..2.5] as @p[team=Red,scores={Kit=17}] run function commands:other/custom_heal {health:2,ult_charge_receiver:"@s"}

kill @s