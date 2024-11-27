kill @s

scoreboard players set @a[team=Red,distance=..5] c.heal 20000

execute as @a[team=Red,distance=..5] run function custom_heal:apply_heal

execute as @a[team=Red,distance=..5] run function commands:attributes/adds/add_ice_pack_speed

execute as @a[team=Blue,distance=..5] run damage @s 3 commands:ice_pack

execute as @a[team=Blue,distance=..5] run function commands:attributes/adds/add_ice_pack_slow

execute as @a[distance=..5] unless score @s Kit matches 16 run scoreboard players add @p[team=Red,scores={Kit=16}] icePackPassive 1

playsound block.glass.break master @a ~ ~ ~ 0.6 2

particle block{block_state:"lapis_block"} ~ ~ ~ 0.2 0.2 0.2 0.2 5