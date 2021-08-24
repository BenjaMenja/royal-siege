tag @s add purchase

give @s[tag=purchase,scores={Money=700..}] minecraft:potion{CustomModelData:101,display:{Name:'{"text":"Specialty Dish","color":"aqua","italic":false}',Lore:['{"text":"A beautiful blend of luxury foods."}']},specialtydish:1b,CustomPotionEffects:[{Id:3b,Amplifier:0b,Duration:600,ShowParticles:0b},{Id:5b,Amplifier:0b,Duration:600,ShowParticles:0b},{Id:10b,Amplifier:1b,Duration:200,ShowParticles:0b},{Id:11b,Amplifier:0b,Duration:600,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:600,ShowParticles:0b},{Id:21b,Amplifier:0b,Duration:600,ShowParticles:0b},{Id:22b,Amplifier:1b,Duration:600,ShowParticles:0b}],CustomPotionColor:16758282} 1

scoreboard players remove @s[tag=purchase,scores={Money=700..}] Money 700

tag @s remove purchase