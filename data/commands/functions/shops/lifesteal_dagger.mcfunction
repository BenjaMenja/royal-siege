tag @s add purchase

give @s[tag=purchase,scores={Money=650..}] minecraft:iron_sword{display:{Name:'{"text":"Lifesteal Dagger","color":"red","italic":false}',Lore:['{"text":"Heals you if you get a kill with it."}','{"text":"Also gives you a small amount of regeneration when you deal damage."}','{"text":" "}','{"text":" When in Main Hand:","color":"gray","italic":false}','{"text":" 7 Attack Damage","color":"dark_green","italic":false}','{"text":" 2 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,CustomModelData:58,lifesteal:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-695049456,1613449822,-1935804572,162341620],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-1797453144,-1203943838,-1910226769,1045822871],Slot:"mainhand"}]} 1

scoreboard players remove @s[scores={Money=650..},tag=purchase] Money 650

tag @s remove purchase