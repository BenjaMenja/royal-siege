tag @s add purchase

give @s[scores={Money=600..},tag=purchase] minecraft:iron_pickaxe{CustomModelData:52,display:{Name:'{"text":"Anchor","color":"dark_gray","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 14 Attack Damage","color":"dark_green","italic":false}','{"text":" 0.5 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,anchor:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.5,Operation:0,UUID:[I;708876966,1140961168,-1433807397,-996942775],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:14,Operation:0,UUID:[I;-1435344204,-1481880816,-1969984662,-917934353],Slot:"mainhand"}]} 1

scoreboard players remove @s[scores={Money=600..}] Money 600

tag @s remove purchase