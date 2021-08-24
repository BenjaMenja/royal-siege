tag @s add purchase

give @s[scores={Money=750..},tag=purchase] minecraft:golden_sword{display:{Name:'{"text":"The Dutchman\'s Blade","italic":false}',Lore:['{"text":"More powerful than the Golden Cutlass,"}','{"text":"but only deals single target damage."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 8 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,CustomModelData:54,Enchantments:[{id:"minecraft:smite",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;1903186001,1042367771,-1252644050,-734084767],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1773217033,-713011749,-1642289380,421541007],Slot:"mainhand"}]} 1

scoreboard players remove @s[scores={Money=750..}] Money 750

tag @s remove purchase