scoreboard players set #hit ray.regen 1
effect give @s[team=Red] instant_health 1 0
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 10
execute at @a[tag=regen.red] if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities/regenerative_staff master @a[tag=regen.red] ~ ~ ~ 0.3 1
execute at @s if score #angelspellsred voicelineCD matches 60.. run playsound royalsiege:abilities/regenerative_staff master @s ~ ~ ~ 0.3 1
execute if entity @a[tag=regen.red] if score #angelspellsred voicelineCD matches 60.. run scoreboard players reset #angelspellsred voicelineCD
scoreboard players set @a[tag=regen.red] RegenTimer 120





