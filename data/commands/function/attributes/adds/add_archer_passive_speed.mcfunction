function commands:attributes/clears/clear_archer_passive_speed

tag @s[tag=hitandrun4,tag=upgraded] add hitandrun5

tag @s[tag=hitandrun3,tag=upgraded] add hitandrun4

tag @s[tag=hitandrun2] add hitandrun3

tag @s[tag=hitandrun1] add hitandrun2

tag @s add hitandrun1

attribute @s[tag=hitandrun5] minecraft:movement_speed modifier add 0-1-1200-60-0 0.5 add_multiplied_base

attribute @s[tag=hitandrun4] minecraft:movement_speed modifier add 0-1-1200-60-0 0.4 add_multiplied_base

attribute @s[tag=hitandrun3] minecraft:movement_speed modifier add 0-1-1200-60-0 0.3 add_multiplied_base

attribute @s[tag=hitandrun2] minecraft:movement_speed modifier add 0-1-1200-60-0 0.2 add_multiplied_base

attribute @s[tag=hitandrun1] minecraft:movement_speed modifier add 0-1-1200-60-0 0.1 add_multiplied_base

scoreboard players set @s RSAttr.ArcherPassiveSpeed 0