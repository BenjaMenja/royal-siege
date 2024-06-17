kill @s

summon area_effect_cloud ~ ~ ~ {Particle:{type:"smoke"},Radius:4f,RadiusPerTick:-0.01f,Duration:100,Tags:["smokered"]}

execute if score #ninjavoicered voicelineCD matches 60.. run playsound royalsiege:abilities.smoke_bomb master @a[distance=..8]

execute if score #ninjavoicered voicelineCD matches 60.. run scoreboard players reset #ninjavoicered voicelineCD

