scoreboard players set #hit ray.regen 1
function commands:other/custom_heal {health:4,ult_charge_receiver:"@a[tag=regen.blue]"}
effect give @s[team=Blue,tag=blessed] regeneration 3 1
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 10
execute at @a[tag=regen.blue] if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities/regenerative_staff master @a[tag=regen.blue] ~ ~ ~ 0.3 1
execute at @s if score #angelspellsblue voicelineCD matches 60.. run playsound royalsiege:abilities/regenerative_staff master @s ~ ~ ~ 0.3 1
execute if entity @a[tag=regen.blue] if score #angelspellsblue voicelineCD matches 60.. run scoreboard players reset #angelspellsblue voicelineCD
scoreboard players set @a[tag=regen.blue] RegenTimer 120
