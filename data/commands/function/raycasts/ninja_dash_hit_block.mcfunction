scoreboard players set #hit ray.dash 1
teleport @s ~ ~ ~
function commands:attributes/adds/add_ninja_dash_speed
teleport @s ~ ~0.5 ~
execute if block ~ ~ ~ #commands:can_place_on_without_grass run teleport @s ^ ^ ^-0.5
scoreboard players remove @s[tag=!upgraded] dashcharge 120
scoreboard players remove @s[tag=upgraded] dashcharge 100

