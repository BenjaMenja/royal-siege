scoreboard players set #hit ray.dash 1
teleport @s ~ ~ ~
function commands:attributes/adds/add_ninja_dash_speed
execute at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;0]}]}}}}
teleport @s ~ ~0.5 ~
execute if block ~ ~ ~ #commands:can_place_on_without_grass run teleport @s ^ ^ ^-0.5
scoreboard players remove @s[tag=!upgraded] dashcharge 120
scoreboard players remove @s[tag=upgraded] dashcharge 100

