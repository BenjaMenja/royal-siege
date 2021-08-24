tag @s add purchase

give @s[tag=purchase,scores={Money=300..},team=Red] minecraft:snowball{display:{Name:'{"text":"Toxin Ball","color":"#045207","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"Removes healing effects from nearby enemies when landed."}']},CustomModelData:107,toxinballred:1b} 2

give @s[tag=purchase,scores={Money=300..},team=Blue] minecraft:snowball{display:{Name:'{"text":"Toxin Ball","color":"#045207","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"Removes healing effects from nearby enemies when landed."}']},CustomModelData:107,toxinballblue:1b} 2

scoreboard players remove @s[tag=purchase,scores={Money=300..}] Money 300

tag @s remove purchase