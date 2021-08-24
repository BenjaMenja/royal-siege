tag @s add purchase

give @s[scores={Money=550..},tag=purchase] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Shielding Spell","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives shield health to all nearby allies."}']},CustomModelData:35,shieldingspell:1b} 1

scoreboard players remove @s[scores={Money=550..}] Money 550

tag @s remove purchase

