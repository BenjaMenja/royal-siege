execute if entity @s[tag=systemRebootRed] run scoreboard players set @a[team=Blue,distance=..4] RSAttr.NoAtkDmg 100

execute if entity @s[tag=systemRebootRed] run scoreboard players set @a[team=Blue,distance=..4] RSAttr.Rooted 100

execute if entity @s[tag=systemRebootRed] as @a[team=Blue,distance=..4] run function commands:attributes/adds/add_no_melee_damage

execute if entity @s[tag=systemRebootRed] as @a[team=Blue,distance=..4] run function commands:attributes/adds/add_rooted

execute if entity @s[tag=systemRebootRed] run tag @a[team=Blue,distance=..4] add rebooting

execute if entity @s[tag=systemRebootBlue] run scoreboard players set @a[team=Red,distance=..4] RSAttr.NoAtkDmg 100

execute if entity @s[tag=systemRebootBlue] run scoreboard players set @a[team=Red,distance=..4] RSAttr.Rooted 100

execute if entity @s[tag=systemRebootBlue] as @a[team=Red,distance=..4] run function commands:attributes/adds/add_no_melee_damage

execute if entity @s[tag=systemRebootBlue] as @a[team=Red,distance=..4] run function commands:attributes/adds/add_rooted

execute if entity @s[tag=systemRebootBlue] run tag @a[team=Red,distance=..4] add rebooting

particle item{item:"redstone"} ~ ~ ~ 1 1 1 0.1 100

kill @s