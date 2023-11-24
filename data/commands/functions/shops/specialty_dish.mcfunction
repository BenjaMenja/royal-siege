tag @s add purchase

give @s[tag=purchase,scores={Money=700..}] minecraft:potion{CustomModelData:101,display:{Name:'{"text":"Specialty Dish","color":"aqua","italic":false}',Lore:['{"text":"A beautiful blend of luxury foods."}']},specialtydish:1b,custom_potion_effects:[{id:"minecraft:haste",amplifier:0b,duration:600,show_particles:0b},{id:"minecraft:haste",amplifier:0b,duration:600,show_particles:0b},{id:"minecraft:regeneration",amplifier:1b,duration:200,show_particles:0b},{id:"minecraft:resistance",amplifier:0b,duration:600,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0b,duration:600,show_particles:0b},{id:"minecraft:health_boost",amplifier:0b,duration:600,show_particles:0b},{id:"minecraft:absorption",amplifier:1b,duration:600,show_particles:0b}],CustomPotionColor:16758282} 1

scoreboard players remove @s[tag=purchase,scores={Money=700..}] Money 700

tag @s remove purchase