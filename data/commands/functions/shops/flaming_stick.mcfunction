tag @s add purchase

give @s[scores={Money=300..}] stick{CustomModelData:55,display:{Name:'{"text":"Flaming Stick","italic":false}',Lore:['{"text":"Set your enemies ablaze."}']},Enchantments:[{id:"minecraft:fire_aspect",lvl:3s}]} 1

scoreboard players remove @s[scores={Money=300..}] Money 300

tag @s remove purchase