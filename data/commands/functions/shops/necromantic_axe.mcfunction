tag @s add purchase

give @s[scores={Money=750..},tag=purchase] minecraft:stone_axe{HideFlags:2,display:{Name:'{"text":"Necromantic Axe","color":"#4400FF","italic":false}',Lore:['{"text":"A powerful axe that cleaves through enemies."}','{"text":"Killing an enemy with this will cause them to turn into a friendly hatchling with increased stats."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 9.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},Unbreakable:1b,CustomModelData:115,necroaxe:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9.5,Operation:0,UUID:[I;746179385,1067993769,-1899700776,-956236012],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;-144313458,1112425357,-1145319016,-1757960214],Slot:"mainhand"}]} 1

scoreboard players remove @s[scores={Money=750..}] Money 750

tag @s remove purchase