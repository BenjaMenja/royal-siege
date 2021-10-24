tag @s add rooting
scoreboard players set #hit ray.root 0
scoreboard players set #distance ray.root 0
function commands:raycasts/rooting_spell_blue_ray
clear @s carrot_on_a_stick{rootingspell:1b} 1
execute if entity @s[team=Blue] if score #entvoiceblue voicelineCD matches 40.. run playsound royalsiege:abilities.rooting_spell master @a[distance=..15] ~ ~ ~ 1 1
execute if entity @s[team=Blue] if score #entvoiceblue voicelineCD matches 40.. run scoreboard players reset #entvoiceblue voicelineCD
execute if entity @a[tag=rooted,team=Red] run tellraw @s [{"text":"You rooted: ","color":"green"},{"selector":"@a[tag=rooted,team=Red]"}]
tag @s remove wrenched
tag @s remove rooting