tag @s add purchase

give @s[tag=purchase,scores={Money=400..}] egg{display:{Name:'{"text":"Chicken Bomb","italic":false}',Lore:['{"text":"If a chicken hatches from the egg,"}','{"text":"it will violently explode."}']},HideFlags:1,Enchantments:[{}]} 16

scoreboard players remove @s[tag=purchase,scores={Money=400..}] Money 400

tag @s remove purchase