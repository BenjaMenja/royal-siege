tag @s add dashing
scoreboard players set #hit ray.dash 0
scoreboard players set #distance ray.dash 0
function commands:raycasts/ninja_dash_ray
execute if entity @s[team=Red] if score #ninjavoicered voicelineCD matches 60.. run playsound royalsiege:abilities.dash master @s ~ ~ ~ 1 1
execute if entity @s[team=Blue] if score #ninjavoiceblue voicelineCD matches 60.. run playsound royalsiege:abilities.dash master @s ~ ~ ~ 1 1
execute if entity @s[team=Red] if score #ninjavoicered voicelineCD matches 60.. run scoreboard players reset #ninjavoicered voicelineCD
execute if entity @s[team=Blue] if score #ninjavoiceblue voicelineCD matches 60.. run scoreboard players reset #ninjavoiceblue voicelineCD
tag @s remove dash
tag @s remove dashing