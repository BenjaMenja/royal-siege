tag @s add purchase

give @s[tag=purchase,scores={Money=650..}] iron_chestplate{display:{Name:'{"text":"Reinforced Casing","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;-83901232,23821914,99012010,-1231232157],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;-77791239,5531278,55555,-39120145],Slot:"chest"}]} 1

scoreboard players remove @s[tag=purchase,scores={Money=650..}] Money 650

tag @s remove purchase