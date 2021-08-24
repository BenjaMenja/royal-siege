tag @s add purchase

give @s[tag=purchase,scores={Money=600..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Russian Roulette","color":"gold","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Fires a powerful bullet that pierces with a 16.66% success rate."}','{"text":"Can be used every 5 seconds."}']},HideFlags:4,Unbreakable:1b,CustomModelData:143,russianroulette:1b} 1

scoreboard players set @s[scores={Money=600..}] rouletteTimer 1

scoreboard players remove @s[tag=purchase,scores={Money=600..}] Money 600

tag @s remove purchase