weather rain 15

effect give @a[scores={Ultimate=9},team=Blue] speed 15 1 true

effect give @a[scores={Ultimate=9},team=Blue] resistance 15 1 true

give @a[scores={Ultimate=9},team=Blue] minecraft:trident{display:{Name:'{"text":"Mythological Trident","color":"aqua","italic":false}',Lore:['{"text":"The perfect all around trident."}','{"text":"Can be used to fly across the map and deal loads of melee damage."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 10 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,mythtrident:1b,Enchantments:[{id:"minecraft:riptide",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;740021286,-782217592,-1933258092,-488879743],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1769352607,1986874549,-1856232837,618126304],Slot:"mainhand"}]} 1

tellraw @a [{"selector":"@a[scores={Ultimate=9},team=Blue]"},{"text":" is unleashing the wrath of the sea!"}]

tag @a[scores={Ultimate=9},team=Blue] add scourgeActive

tp @s ~ -100 ~