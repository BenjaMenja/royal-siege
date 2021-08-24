tag @s add purchase

give @s[scores={Money=600..},tag=purchase] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Security Guard","color":"red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Spawns a security guard that chases the enemy with the highest amount of money."}']},CustomModelData:146,securityguard:1b} 1

scoreboard players remove @s[scores={Money=600..}] Money 600

tag @s remove purchase