function commands:attributes/clears/clear_archer_passive_speed

tag @s[tag=hitandrun4,tag=upgraded] add hitandrun5

tag @s[tag=hitandrun3,tag=upgraded] add hitandrun4

tag @s[tag=hitandrun2] add hitandrun3

tag @s[tag=hitandrun1] add hitandrun2

tag @s add hitandrun1

attribute @s[tag=hitandrun5] minecraft:generic.movement_speed modifier add 0-1-1200-60-0 "ArcherPassiveSpeed" 0.5 multiply_base

attribute @s[tag=hitandrun4] minecraft:generic.movement_speed modifier add 0-1-1200-60-0 "ArcherPassiveSpeed" 0.4 multiply_base

attribute @s[tag=hitandrun3] minecraft:generic.movement_speed modifier add 0-1-1200-60-0 "ArcherPassiveSpeed" 0.3 multiply_base

attribute @s[tag=hitandrun2] minecraft:generic.movement_speed modifier add 0-1-1200-60-0 "ArcherPassiveSpeed" 0.2 multiply_base

attribute @s[tag=hitandrun1] minecraft:generic.movement_speed modifier add 0-1-1200-60-0 "ArcherPassiveSpeed" 0.1 multiply_base

scoreboard players set @s RSAttr.ArcherPassiveSpeed 0