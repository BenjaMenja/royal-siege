tag @s add purchase

give @s[scores={Money=650..},tag=purchase] minecraft:leather_chestplate{display:{Name:'{"text":"Prismarine Breastplate","color":"dark_aqua","italic":false}',color:370320},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-1870324898,-1892989141,-2073980208,-727557238],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;-455788462,-70431298,-1532434737,-733941034],Slot:"chest"}]} 1

scoreboard players remove @s[scores={Money=650..}] Money 650

tag @s remove purchase