execute if entity @s[tag=redmushroom] run summon area_effect_cloud ~ ~ ~ {Particle:"block brown_mushroom_block",ReapplicationDelay:10,Radius:4f,RadiusPerTick:0f,RadiusOnUse:0.3f,Duration:160,Effects:[{Id:19,Amplifier:1b,Duration:20,ShowParticles:0b}],Tags:["redmushroom","mushroom"]}

execute if entity @s[tag=redmushroom] if score #entvoicered voicelineCD matches 40.. run playsound royalsiege:abilities.poison_mushroom master @a[distance=..15] ~ ~ ~ 1 1

execute if entity @s[tag=redmushroom] if score #entvoicered voicelineCD matches 40.. run scoreboard players reset #entvoicered voicelineCD 

execute if entity @s[tag=bluemushroom] run summon area_effect_cloud ~ ~ ~ {Particle:"block brown_mushroom_block",ReapplicationDelay:10,Radius:4f,RadiusPerTick:0f,RadiusOnUse:0.3f,Duration:160,Effects:[{Id:19,Amplifier:1b,Duration:20,ShowParticles:0b}],Tags:["bluemushroom","mushroom"]}

execute if entity @s[tag=bluemushroom] if score #entvoiceblue voicelineCD matches 40.. run playsound royalsiege:abilities.poison_mushroom master @a[distance=..15] ~ ~ ~ 1 1

execute if entity @s[tag=bluemushroom] if score #entvoiceblue voicelineCD matches 40.. run scoreboard players reset #entvoiceblue voicelineCD 

teleport @s ~ -100 ~