execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..15] ~ ~ ~ 1 0

execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 1 100 force

execute at @s[team=Red] run tag @a[distance=..9,team=Blue,nbt={Inventory:[{tag:{ultimateitem:1b}}]}] add hadUltimate

execute at @s[team=Red] run clear @a[distance=..9,team=Blue] carrot_on_a_stick

execute at @s[team=Red] run clear @a[distance=..9,team=Blue] bat_spawn_egg

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=6},distance=..9] carrot_on_a_stick{CustomModelData:2,display:{Name:'{"text":"Lightning Staff","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a beam that strikes lightning"}','{"text":"onto enemy players and blocks."}','{"text":"Gains a charge every 6 seconds, and "}','{"text":"can hold up to 8 charges."}']},HideFlags:1,Unbreakable:1b,lightningstaff:1b,Enchantments:[{}]} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=6},distance=..9] carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Fireball Launcher","color":"red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Contains an unlimited "}','{"text":"supply of fireballs to launch."}','{"text":"Can be used every 6 seconds."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],fireballlauncher:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=2},distance=..9] carrot_on_a_stick{CustomModelData:9,display:{Name:'{"text":"Dash","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Dash forward up to 5 blocks, creating an explosion wherever you land."}','{"text":"You also receive brief speed and damage resistance."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],ninjadash:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=10},distance=..9] carrot_on_a_stick{CustomModelData:16,display:{Name:'{"text":"Gunblade - Burst","color":"red","italic":false}',Lore:['{"text":"A gun with a blade! It doesn’t get much more dangerous than that."}','{"text":"It shoots a three round burst every 1s. You can switch"}','{"text":"between special bullets by shooting while crouching."}','{"text":"Cannot be fired if you have no ammo in your inventory."}','{"text":"To reload, simply drop the item."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,gunblade:1b,switch:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;-161766760,-1067038840,-1503270007,212943800],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7.5,Operation:0,UUID:[I;1725832463,-1623243755,-1879494581,-1383118150],Slot:"mainhand"}]} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=8},distance=..9] carrot_on_a_stick{display:{Name:'{"text":"Blossom","color":"#22FF00","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives a burst of energy and healing to nearby allies."}']},CustomModelData:31,blossom:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=8},distance=..9] carrot_on_a_stick{CustomModelData:32,display:{Name:'{"text":"Rooting Spell","color":"#228A12","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Right click to shoot a rooting beam."}','{"text":"Successful hits will root an enemy,"}','{"text":"freezing them in place for a short time."}','{"text":"Has a maximum range of 10 blocks."}']},Unbreakable:1b,rootingspellblue:1b,rootingspell:1b,Enchantments:[{}]} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=4},distance=..9] carrot_on_a_stick{CustomModelData:10,display:{Name:'{"text":"Regenerative Staff","color":"green","italic":false}',Lore:['{"text":"Fires a healing beam when used."}','{"text":"Heals 4 health if it hits a teammate."}','{"text":"Has a maximum range of 20 blocks"}']},Unbreakable:1b,regenstaff:1b,Enchantments:[{}]} 

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=11},distance=..9] minecraft:carrot_on_a_stick{CustomModelData:94,display:{Name:'{"text":"Mystery Basket","color":"#FFC380","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Generates mystery foods that grant positive effects to teammates nearby."}']},Unbreakable:1b,mysterybasket:1b,Enchantments:[{}]} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=12},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dragon Rush","color":"#4000A1","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Teleports you 10 blocks in the direction you\'re facing, after a brief startup."}','{"text":"Teleporting through an enemy will cause them to blow up."}']},Unbreakable:1b,CustomModelData:109,dragonrush:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=12},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dragon Rage","color":"#4000A1","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a weak dragon fireball in the direction you are facing."}']},Unbreakable:1b,CustomModelData:110,dragonrage:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=7},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=13},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Playing Cards","color":"green","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Throws a set of 5 playing cards, with two on the side."}','{"text":"Deals damage equal to the average of the card values."}','{"text":"Also has bonus effects depending on poker hand."}']},HideFlags:4,Unbreakable:1b,CustomModelData:151,playingcards:1b} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=14},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Space Wrench","color":"dark_purple","italic":false}',Lore:['{"text":"Right-Click to use Ability","color":"yellow","italic":false}','{"text":" "}','{"text":"A multipurpose wrench, useful for bashing foes and augmenting things."}','{"text":"Right-Clicking while aiming at a teammate will augment them."}','{"text":"The augment varies based on their character choice."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 6.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.4 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,CustomModelData:171,spacewrench:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6.5,Operation:0,UUID:[I;275632177,18172721,-1137389636,-1964608710],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;275125213,-518239803,-1636892940,-381794455],Slot:"mainhand"}]} 1

execute at @s[team=Red] run give @a[team=Blue,scores={Kit=14},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Asteroid","color":"dark_red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Fires a fast asteroid that explodes on contact, "}','{"text":"sending fiery chunks of rock in a chaotic fashion."}','{"text":"The chunks explode when they hit the ground."}']},Unbreakable:1b,CustomModelData:172,asteroid:1b} 1

execute at @s[team=Red] run tag @a[team=Blue,distance=..9] remove hasDebrisCannon

execute at @s[team=Red] run tag @a[team=Blue,distance=..9] remove hasGravityCanceler

execute at @s[team=Red] run tag @a[team=Blue,distance=..9] remove hasGasVacuum

execute at @s[team=Blue] run tag @a[distance=..9,team=Red,nbt={Inventory:[{tag:{ultimateitem:1b}}]}] add hadUltimate

execute at @s[team=Blue] run clear @a[distance=..9,team=Red] carrot_on_a_stick

execute at @s[team=Blue] run clear @a[distance=..9,team=Red] bat_spawn_egg

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=6},distance=..9] carrot_on_a_stick{CustomModelData:2,display:{Name:'{"text":"Lightning Staff","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a beam that strikes lightning"}','{"text":"onto enemy players and blocks."}','{"text":"Gains a charge every 6 seconds, and "}','{"text":"can hold up to 8 charges."}']},HideFlags:1,Unbreakable:1b,lightningstaff:1b,Enchantments:[{}]} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=6},distance=..9] carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Fireball Launcher","color":"red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Contains an unlimited "}','{"text":"supply of fireballs to launch."}','{"text":"Can be used every 6 seconds."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],fireballlauncher:1b} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=2},distance=..9] carrot_on_a_stick{CustomModelData:9,display:{Name:'{"text":"Dash","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Dash forward up to 5 blocks, creating an explosion wherever you land."}','{"text":"You also receive brief speed and damage resistance."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],ninjadash:1b} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=8},distance=..9] carrot_on_a_stick{display:{Name:'{"text":"Blossom","color":"#22FF00","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Gives a burst of energy and healing to nearby allies."}']},CustomModelData:31,blossom:1b}

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=8},distance=..9] carrot_on_a_stick{CustomModelData:32,display:{Name:'{"text":"Rooting Spell","color":"#228A12","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Right click to shoot a rooting beam."}','{"text":"Successful hits will root an enemy,"}','{"text":"freezing them in place for a short time."}','{"text":"Has a maximum range of 10 blocks."}']},Unbreakable:1b,rootingspellred:1b,rootingspell:1b,Enchantments:[{}]} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=10},distance=..9] carrot_on_a_stick{CustomModelData:16,display:{Name:'{"text":"Gunblade - Burst","color":"red","italic":false}',Lore:['{"text":"A gun with a blade! It doesn’t get much more dangerous than that."}','{"text":"It shoots a three round burst every 1s. You can switch"}','{"text":"between special bullets by shooting while crouching."}','{"text":"Cannot be fired if you have no ammo in your inventory."}','{"text":"To reload, simply drop the item."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,gunblade:1b,switch:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;-161766760,-1067038840,-1503270007,212943800],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7.5,Operation:0,UUID:[I;1725832463,-1623243755,-1879494581,-1383118150],Slot:"mainhand"}]} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=4},distance=..9] carrot_on_a_stick{CustomModelData:10,display:{Name:'{"text":"Regenerative Staff","color":"green","italic":false}',Lore:['{"text":"Fires a healing beam when used."}','{"text":"Heals 4 health if it hits a teammate."}','{"text":"Has a maximum range of 20 blocks"}']},Unbreakable:1b,regenstaff:1b,Enchantments:[{}]} 

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=11},distance=..9] minecraft:carrot_on_a_stick{CustomModelData:94,display:{Name:'{"text":"Mystery Basket","color":"#FFC380","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Generates mystery foods that grant positive effects to teammates nearby."}']},Unbreakable:1b,mysterybasket:1b,Enchantments:[{}]} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=12},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dragon Rush","color":"#4000A1","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Teleports you 10 blocks in the direction you\'re facing, after a brief startup."}','{"text":"Teleporting through an enemy will cause them to blow up."}']},Unbreakable:1b,CustomModelData:109,dragonrush:1b} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=12},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dragon Rage","color":"#4000A1","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a weak dragon fireball in the direction you are facing."}']},Unbreakable:1b,CustomModelData:110,dragonrage:1b} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=7},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 2 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=13},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Playing Cards","color":"green","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Throws a set of 5 playing cards, with two on the side."}','{"text":"Deals damage equal to the average of the card values."}','{"text":"Also has bonus effects depending on poker hand."}']},HideFlags:4,Unbreakable:1b,CustomModelData:151,playingcards:1b} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=14},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Space Wrench","color":"dark_purple","italic":false}',Lore:['{"text":"Right-Click to use Ability","color":"yellow","italic":false}','{"text":" "}','{"text":"A multipurpose wrench, useful for bashing foes and augmenting things."}','{"text":"Right-Clicking while aiming at a teammate will augment them."}','{"text":"The augment varies based on their character choice."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 6.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.4 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,CustomModelData:171,spacewrench:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6.5,Operation:0,UUID:[I;275632177,18172721,-1137389636,-1964608710],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;275125213,-518239803,-1636892940,-381794455],Slot:"mainhand"}]} 1

execute at @s[team=Blue] run give @a[team=Red,scores={Kit=14},distance=..9] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Asteroid","color":"dark_red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Fires a fast asteroid that explodes on contact, "}','{"text":"sending fiery chunks of rock in a chaotic fashion."}','{"text":"The chunks explode when they hit the ground."}']},Unbreakable:1b,CustomModelData:172,asteroid:1b} 1

execute at @s[team=Blue] run tag @a[team=Red,distance=..9] remove hasDebrisCannon

execute at @s[team=Blue] run tag @a[team=Red,distance=..9] remove hasGravityCanceler

execute at @s[team=Blue] run tag @a[team=Red,distance=..9] remove hasGasVacuum

execute as @a[tag=hadUltimate] run function commands:other/disable_give_ultimates

scoreboard players set @s disableTimer 2000