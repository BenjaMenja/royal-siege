tag @s add purchase

give @s[tag=purchase,scores={Money=600..}] minecraft:music_disc_chirp{CanPlaceOn:["minecraft:jukebox"],HideFlags:18,CustomModelData:53,display:{Name:'{"text":"CD-ROM","color":"green","italic":false}',Lore:['{"text":"Deals high melee damage."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 8.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.4 Attack Speed","color":"dark_green","italic":false}']},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8.5,Operation:0,UUID:[I;1955915819,-751350000,-2073621050,-1929443174],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;1696404335,1537560163,-1934961815,1705359449],Slot:"mainhand"}]} 1

scoreboard players remove @s[tag=purchase,scores={Money=600..}] Money 600

tag @s remove purchase