tag @s add purchase

give @s[scores={Money=450..},tag=purchase] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Rejuvenating Spell","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Greatly increases health regeneration"}','{"text":"to nearby teammates."}']},CustomModelData:36,rejuvenatingspell:1b} 1

scoreboard players remove @s[scores={Money=450..}] Money 450

tag @s remove purchase