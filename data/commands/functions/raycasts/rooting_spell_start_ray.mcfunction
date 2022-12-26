tag @s add rooting
scoreboard players set #hit ray.root 0
scoreboard players set #distance ray.root 0
function commands:raycasts/rooting_spell_ray
scoreboard players set @s rootingTimer 600
execute if entity @s[team=Red] if score #entvoicered voicelineCD matches 40.. run playsound royalsiege:abilities.rooting_spell master @a[distance=..15] ~ ~ ~ 1 1
execute if entity @s[team=Red] if score #entvoicered voicelineCD matches 40.. run scoreboard players reset #entvoicered voicelineCD
execute if entity @a[tag=rooted,team=Blue] run tellraw @s [{"text":"You rooted: ","color":"green"},{"selector":"@a[tag=rooted,team=Blue]"}]
tag @s remove wrenched
tag @s remove rooting