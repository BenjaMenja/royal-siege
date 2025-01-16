execute if entity @s[team=Red] as @a[team=Red,distance=..8] run function commands:attributes/adds/add_bone_shield_armor

execute if entity @s[team=Red] as @a[team=Red,distance=..8] run item modify entity @s armor.chest commands:bone_shield_protection

execute if entity @s[team=Red] as @a[team=Red,distance=..8] run tag @s add boneShielded

execute if entity @s[team=Blue] as @a[team=Blue,distance=..8] run function commands:attributes/adds/add_bone_shield_armor

execute if entity @s[team=Blue] as @a[team=Blue,distance=..8] run item modify entity @s armor.chest commands:bone_shield_protection

execute if entity @s[team=Blue] as @a[team=Blue,distance=..8] run tag @s add boneShielded

playsound minecraft:entity.skeleton.hurt master @s ~ ~ ~ 0.8 0.6

scoreboard players set @s boneShieldTimer 500

