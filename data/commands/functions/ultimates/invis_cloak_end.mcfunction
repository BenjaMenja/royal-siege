item replace entity @s armor.chest with leather_chestplate{display:{color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:3s},{id:"minecraft:blast_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Operation:0,UUID:[I;82090484,34567839,-9182949,-888263788],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;82919201,-8122,-761399,999202],Slot:"chest"}]} 1

item replace entity @s armor.head with player_head{SkullOwner:{id:[I;103604342,-1386918995,-1757972842,74746554],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY3MzMyNjk2MTRmZThhOWFlODlmNWM1ODI4NmFhNTNiOWUzODNmYzRkYzU3ZTM3ZWNiZmE1ZTkzYSJ9fX0="}]}}} 1

item replace entity @s[tag=hasBouncyBoots] armor.feet with leather_boots{display:{Name:'{"text":"Bouncy Boots"}',Lore:['{"text":"A pair of boots that gives you increased jump height."}'],color:0},Unbreakable:1b,jump:1b,Enchantments:[{id:"minecraft:protection",lvl:3s}]} 1

tag @s remove hasBouncyBoots

tag @s remove cloaked

scoreboard players reset @s InvisDur
