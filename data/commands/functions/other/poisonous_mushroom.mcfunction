execute if entity @s[tag=redmushroom] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"minecraft:brown_mushroom_block",Properties:{up:"undefined",down:"undefined",north:"undefined",south:"undefined",east:"undefined",west:"undefined"}}},ReapplicationDelay:10,Radius:4f,RadiusPerTick:0f,RadiusOnUse:0.3f,Duration:160,potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:20,show_particles:0b}]},Tags:["redmushroom","mushroom"]}

execute if entity @s[tag=redmushroom] if score #entvoicered voicelineCD matches 40.. run playsound royalsiege:abilities.poison_mushroom master @a[distance=..15] ~ ~ ~ 1 1

execute if entity @s[tag=redmushroom] if score #entvoicered voicelineCD matches 40.. run scoreboard players reset #entvoicered voicelineCD 

execute if entity @s[tag=bluemushroom] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:{Name:"minecraft:brown_mushroom_block",Properties:{up:"undefined",down:"undefined",north:"undefined",south:"undefined",east:"undefined",west:"undefined"}}},ReapplicationDelay:10,Radius:4f,RadiusPerTick:0f,RadiusOnUse:0.3f,Duration:160,potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:20,show_particles:0b}]},Tags:["bluemushroom","mushroom"]}

execute if entity @s[tag=bluemushroom] if score #entvoiceblue voicelineCD matches 40.. run playsound royalsiege:abilities.poison_mushroom master @a[distance=..15] ~ ~ ~ 1 1

execute if entity @s[tag=bluemushroom] if score #entvoiceblue voicelineCD matches 40.. run scoreboard players reset #entvoiceblue voicelineCD 

teleport @s ~ -200 ~