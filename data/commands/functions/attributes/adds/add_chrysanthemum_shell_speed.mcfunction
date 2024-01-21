attribute @s[scores={nearbyPlayers=1}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 "ChrysanthemumSpeed" 0.2 multiply_base

attribute @s[scores={nearbyPlayers=2}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 "ChrysanthemumSpeed" 0.35 multiply_base

attribute @s[scores={nearbyPlayers=3}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 "ChrysanthemumSpeed" 0.5 multiply_base

attribute @s[scores={nearbyPlayers=4}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 "ChrysanthemumSpeed" 0.6 multiply_base

attribute @s[scores={nearbyPlayers=5..}] minecraft:generic.movement_speed modifier add 0-1-2356-160-7 "ChrysanthemumSpeed" 0.7 multiply_base

scoreboard players set @s RSAttr.ChrysanthemumSpeed 0

scoreboard players reset @s nearbyPlayers