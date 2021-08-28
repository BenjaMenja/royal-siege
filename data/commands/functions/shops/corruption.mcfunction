tag @s add purchase

give @s[tag=purchase,scores={Money=500..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Corruption","color":"#020678","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Corrupts all players with corrupt credits in their inventory."}','{"text":"Corrupted players are much more powerful, but are rather unstable."}','{"text":"This ability affects all players, including enemies."}']},CustomModelData:114,corruption:1b} 1

scoreboard players remove @s[scores={Money=500..}] Money 500

tag @s remove purchase