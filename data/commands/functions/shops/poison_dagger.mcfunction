tag @s add purchase

give @s[tag=purchase,scores={Money=650..}] minecraft:iron_sword{display:{Name:'{"text":"Poison Dagger","color":"dark_green","italic":false}',Lore:['{"text":"Poisons enemies when you attack them."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7 Attack Damage","color":"dark_green","italic":false}','{"text":" 2 Attack Speed","color":"dark_green","italic":false}']},Unbreakable:1b,CustomModelData:61,poison:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;601537025,-978695706,-1569640540,1471667248],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;106708932,609960793,-1485232461,-1011000496],Slot:"mainhand"}]} 1

scoreboard players remove @s[tag=purchase,scores={Money=650..}] Money 650

tag @s remove purchase