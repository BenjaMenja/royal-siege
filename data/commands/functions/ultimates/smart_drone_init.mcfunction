execute if entity @s[team=Red] run summon armor_stand ~ ~1.2 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Health:1000f,Tags:["smartDrone","smartDroneRed"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Tags:["smartDrone","smartDroneRed"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{id:[I;946128277,759517147,-1752401778,423880275],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI3ODZhMGI3MWJiNGE3MDEwOGE3NDQzNWU1Y2VlNTg4ZmRmMzU5YjllYWVmYjc0YjY4Mzc3N2I1MTgwNjI5OCJ9fX0="}]}}}}}]}

execute if entity @s[team=Blue] run summon armor_stand ~ ~1.2 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Health:1000f,Tags:["smartDrone","smartDroneBlue"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,Health:1000,PickupDelay:32767,Tags:["smartDrone","smartDroneBlue"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{id:[I;946128277,759517147,-1752401778,423880275],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI3ODZhMGI3MWJiNGE3MDEwOGE3NDQzNWU1Y2VlNTg4ZmRmMzU5YjllYWVmYjc0YjY4Mzc3N2I1MTgwNjI5OCJ9fX0="}]}}}}}]}

tag @s add hasSmartDrone

clear @s carrot_on_a_stick{smartdrone:1b}
