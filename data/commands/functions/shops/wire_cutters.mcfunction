tag @s add purchase

give @s[tag=purchase,scores={Money=550..}] minecraft:shears{CustomModelData:63,display:{Name:'{"text":"Wire Cutters","color":"dark_gray","italic":false}',Lore:['{"text":"Deals extra damage to non-players."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 1 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.4 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:smite",lvl:4s},{id:"minecraft:bane_of_arthropods",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;207936415,2144092800,-1660323976,-1139802692],Slot:"mainhand"}]} 1

scoreboard players remove @s[scores={Money=550..}] Money 550

tag @s remove purchase