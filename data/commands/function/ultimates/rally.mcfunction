execute at @s[team=Red] run teleport @a[team=Red,predicate=commands:in_any_battlefield,distance=..25] ~ ~ ~

execute at @s[team=Blue] run teleport @a[team=Blue,predicate=commands:in_any_battlefield,distance=..25] ~ ~ ~

execute at @s[team=Red] as @a[team=Red,predicate=commands:in_any_battlefield] run function commands:attributes/adds/add_rally_atkdmg

execute at @s[team=Red] as @a[team=Red,predicate=commands:in_any_battlefield] run function commands:attributes/adds/add_rally_speed

execute at @s[team=Blue] as @a[team=Blue,predicate=commands:in_any_battlefield] run function commands:attributes/adds/add_rally_atkdmg

execute at @s[team=Blue] as @a[team=Blue,predicate=commands:in_any_battlefield] run function commands:attributes/adds/add_rally_speed

effect give @s resistance 10 1 true

execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 force

execute at @s run playsound entity.explode master @a ~ ~ ~ 1 0

tag @s remove rally