attribute @s[scores={nearbyPlayers=1}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 0.2 add_multiplied_base

attribute @s[scores={nearbyPlayers=2}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 0.35 add_multiplied_base

attribute @s[scores={nearbyPlayers=3}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 0.5 add_multiplied_base

attribute @s[scores={nearbyPlayers=4}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 0.6 add_multiplied_base

attribute @s[scores={nearbyPlayers=5..}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 0.7 add_multiplied_base

scoreboard players set @s RSAttr.ChrysanthemumSpeed 0

scoreboard players reset @s nearbyPlayers