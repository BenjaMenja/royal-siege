tag @s add purchase

give @s[scores={Money=400..},tag=purchase] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Virus Detector","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Incapacitates an enemy inside of your castle."}']},CustomModelData:44,virusdetector:1b} 1

scoreboard players remove @s[scores={Money=400..}] Money 400

tag @s remove purchase

