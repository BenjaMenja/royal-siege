execute if entity @s[tag=smokered] run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:4f,RadiusPerTick:-0.01f,Duration:100,Tags:["smokered"]}

execute if entity @s[tag=smokered] if score #ninjavoicered voicelineCD matches 60.. run playsound royalsiege:abilities.smoke_bomb master @a[distance=..8]

execute if entity @s[tag=smokered] if score #ninjavoicered voicelineCD matches 60.. run scoreboard players reset #ninjavoicered voicelineCD

execute if entity @s[tag=smokeblue] run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:4f,RadiusPerTick:-0.01f,Duration:100,Tags:["smokeblue"]}

execute if entity @s[tag=smokeblue] if score #ninjavoiceblue voicelineCD matches 60.. run playsound royalsiege:abilities.smoke_bomb master @a[distance=..8]

execute if entity @s[tag=smokeblue] if score #ninjavoiceblue voicelineCD matches 60.. run scoreboard players reset #ninjavoiceblue voicelineCD