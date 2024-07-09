scoreboard players set @s RSAttr.SafeFallDist 2147483647

function commands:attributes/adds/add_safe_fall_dist

function commands:attributes/adds/add_cshell_up_gravity

tag @s add chrysanthemumLaunch

scoreboard players add @s ultsUsed 1

tellraw @a [{"selector":"@s"},{"text":" is preparing for the grand finale!"}]