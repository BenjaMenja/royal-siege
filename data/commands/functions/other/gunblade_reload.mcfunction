clear @s gunpowder{gunbladeammo:1b}

give @s carrot_on_a_stick{CustomModelData:16,display:{Name:'{"text":"Gunblade - Burst","color":"red","italic":false}',Lore:['{"text":"A gun that doubles as a blade."}','{"text":"It shoots a three round burst every 1s. You can switch"}','{"text":"between special bullets by shooting while crouching."}','{"text":"Cannot be fired if you have no ammo in your inventory."}','{"text":"To reload, simply drop the item."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,gunblade:1b,switch:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;-161766760,-1067038840,-1503270007,212943800],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7.5,Operation:0,UUID:[I;1725832463,-1623243755,-1879494581,-1383118150],Slot:"mainhand"}]} 1

execute at @s run playsound minecraft:block.piston.contract master @s ~ ~ ~ 1 2

tag @s add reloading



