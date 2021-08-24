tag @s remove evolve

item replace entity @s[tag=noElytra] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Dragon Scales","color":"#6A006E","italic":false}',Lore:['{"text":"A strong chestplate made of with Dragon Scales."}'],color:0},Unbreakable:1b,dragonscales:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;528031124,541672629,-1690845220,-551697474],Slot:"chest"}]} 1

clear @s firework_rocket

tag @s remove noElytra

scoreboard players reset @s evolutionDur