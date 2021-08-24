scoreboard players add @a[distance=..5,team=Red] RedKit 1

effect give @a[team=Red,distance=..8,scores={RedKit=198}] resistance 5 3

item replace entity @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1329132,-1249841,-1249281910,90],Slot:"head"}],SkullOwner:{Id:[I;-1119675796,-506206,-2001385496,-61856676],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2ZjYWNjYjRkM2U2MWI1OWEwM2U3ZmVlMDk4YTdjNmE0YTYzZGI5YjI5M2E4YmEyYThkMmFlMWY1OGZjZiJ9fX0="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] armor.chest with iron_chestplate{Unbreakable:1,Enchantments:[{id:projectile_protection,lvl:1},{id:protection,lvl:1},{id:blast_protection,lvl:1s}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] armor.legs with iron_leggings{Unbreakable:1,Enchantments:[{id:projectile_protection,lvl:1},{id:protection,lvl:1}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] armor.feet with iron_boots{Unbreakable:1,Enchantments:[{id:projectile_protection,lvl:2},{id:protection,lvl:1}]} 1

give @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] minecraft:iron_axe{display:{Name:'{"text":"Warrior\'s Battleaxe","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 9.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 0.9 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,warrioraxe:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9.5,Operation:0,UUID:[I;1641905257,66145886,-1588703272,-1985932049],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.1,Operation:0,UUID:[I;-1679768215,-1181463334,-1904452306,-759715851],Slot:"mainhand"}]} 1

give @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] shield{Unbreakable:1} 1

give @a[distance=..8,team=Red,scores={Kit=1,RedKit=198}] golden_apple 2

item replace entity @a[distance=..8,team=Red,scores={Kit=2,RedKit=198}] armor.head with player_head{SkullOwner:{Id:[I;103604342,-1386918995,-1757972842,74746554],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmY3MzMyNjk2MTRmZThhOWFlODlmNWM1ODI4NmFhNTNiOWUzODNmYzRkYzU3ZTM3ZWNiZmE1ZTkzYSJ9fX0="}]}}} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=2,RedKit=198}] armor.chest with leather_chestplate{display:{color:0},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:3s},{id:"minecraft:blast_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Operation:0,UUID:[I;82090484,34567839,-9182949,-888263788],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;82919201,-8122,-761399,999202],Slot:"chest"}]} 1

give @p[distance=..8,team=Red,scores={Kit=2,RedKit=198}] minecraft:iron_sword{display:{Name:'{"text":"Light Dagger","italic":false}',Lore:['{"text":"A quick attacking sword that deals medium damage."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7 Attack Damage","color":"dark_green","italic":false}','{"text":" 2 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,lightdagger:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;1504351878,-559725785,-1475738525,-971943002],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-2094652832,-1588574690,-2010162351,2028193702],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1980897705,-1012317169,-1492859658,-697181564],Slot:"mainhand"}]} 1

give @p[distance=..8,team=Red,scores={Kit=2,RedKit=198}] carrot_on_a_stick{CustomModelData:9,display:{Name:'{"text":"Dash","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Dash forward up to 5 blocks, creating an explosion wherever you land."}','{"text":"You also receive brief speed and damage resistance."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],ninjadash:1b} 1

give @p[distance=..8,team=Red,scores={Kit=2,RedKit=198}] minecraft:trident{display:{Name:'{"text":"Throwing Blade"}',Lore:['{"text":"A high damage ranged weapon that comes back to you."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 5 Attack Damage","color":"dark_green","italic":false}','{"text":" 2 Attack Speed","color":"dark_green","italic":false}']},HideFlags:3,Unbreakable:1b,throwingblade:1b,Enchantments:[{id:"minecraft:loyalty",lvl:3s},{id:"minecraft:impaling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;997616110,898125312,-1380512706,-415462830],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-827820228,836979124,-1575813943,-1567089025],Slot:"mainhand"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;0,787806,0,976389],Slot:"head"}],SkullOwner:{Id:[I;-369259414,-168932698,-1520939587,824470675],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Q0NzMwYWQ1MmE5Yjk5Nzk1MGU2MzdlNTk1NDJmNjY2NDFhYTJmY2Q5OWFmM2E5Mzc3MzZmMDQyNjQyNjg4In19fQ=="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] armor.chest with iron_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.4,Operation:0,UUID:[I;0,369437,0,827157],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;8,620982,0,542167],Slot:"chest"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] armor.legs with iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;8,62082,0,54267],Slot:"legs"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] armor.feet with iron_boots{Unbreakable:1,Enchantments:[{id:protection,lvl:1},{id:blast_protection,lvl:2}]} 1

give @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] minecraft:iron_sword{display:{Name:'{"text":"Guardian\'s Blade","color":"dark_gray","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,guardianblade:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-375892774,1582252271,-1617841036,-972898597],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;1034345602,-190951744,-1994650085,-1712999519],Slot:"mainhand"}]} 1

give @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] shield{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;183926069,-2078455965,-1775636573,557814341],Slot:"offhand"}]} 1

give @a[distance=..8,team=Red,scores={Kit=3,RedKit=198}] splash_potion{display:{Name:"\"Guarding Potion\""},CustomPotionEffects:[{Id:11,Amplifier:1,Duration:600},{Id:12,Amplifier:0,Duration:600}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=4,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;0,787806,0,976389],Slot:"head"}],SkullOwner:{Id:[I;330708613,-1204793457,-1642454402,-2045380575],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzZmMDQ4NTQ1M2QzYTkwZjM1NDMyMWU4ZjM4MmJlZjEwNmJmNTA2NDI0ZjcwYzA0YTIwN2Y4MmJkYjI4NTZiOSJ9fX0="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=4,RedKit=198}] armor.chest with leather_chestplate{Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:2}],display:{color:65518}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=4,RedKit=198}] armor.legs with leather_leggings{Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:2}],display:{color:65518}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=4,RedKit=198}] armor.feet with leather_boots{Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:2},{id:projectile_protection,lvl:1}],display:{color:65518}} 1

give @a[distance=..8,team=Red,scores={Kit=4,RedKit=198}] minecraft:stick{CustomModelData:120,display:{Name:'{"text":"Angelic Staff","color":"#12FFB8","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.4 Attack Speed","color":"dark_green","italic":false}','{"text":"+2 Max Health","color":"blue","italic":false}']},HideFlags:2,angelicstaff:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;-306116276,999508296,-1963665214,1013448597],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1383623581,937248557,-1193897819,-1047743990],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-77892396,-906542332,-2145450916,1626212454],Slot:"mainhand"}]} 1

give @a[distance=..8,team=Red,scores={Kit=4,RedKit=198}] carrot_on_a_stick{CustomModelData:10,display:{Name:'{"text":"Regenerative Staff","color":"green","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Fires a healing beam when used."}','{"text":"Heals 4 health if it hits a teammate."}','{"text":"Has a maximum range of 20 blocks"}']},Unbreakable:1b,regenstaff:1b,Enchantments:[{}]} 

give @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] bow{Unbreakable:1,display:{Name:'{"text":"Archer\'s Bow","italic":false}'},Enchantments:[{id:sharpness,lvl:4},{id:power,lvl:3},{id:punch,lvl:1},{id:infinity,lvl:1}],archerbow:1b} 1

give @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] wooden_axe{CustomModelData:11,HideFlags:1,Enchantments:[{id:unbreaking,lvl:1},{id:"minecraft:efficiency",lvl:5s}],Unbreakable:1,display:{Name:'{"text":"Shield Buster","italic":false}'}} 1

give @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] arrow{CustomModelData:12,display:{Name:'{"text":"Archer\'s Infinite Arrow","italic":false}'}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;77729293,10,82894,-192736449],Slot:"head"}],SkullOwner:{Id:[I;1506350569,-2016000832,-1167242250,549915695],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTkzZWU1YmIwYzdmYWNjYTBmM2RmZTA5NDMwYzViODRhOTBlNjU4OGQwYTEwOTlkYTg1YjZlYWViODk1OGY5YSJ9fX0="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] armor.chest with chainmail_chestplate{Unbreakable:1,Enchantments:[{id:projectile_protection,lvl:1},{id:protection,lvl:1}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] armor.legs with chainmail_leggings{Unbreakable:1,Enchantments:[{id:projectile_protection,lvl:1},{id:protection,lvl:1}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] armor.feet with chainmail_boots{Unbreakable:1,Enchantments:[{id:projectile_protection,lvl:2},{id:protection,lvl:2}]} 1

give @a[distance=..8,team=Red,scores={Kit=5,RedKit=198}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Glowing Effect","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Make all enemies glow for a short time."}']},CustomModelData:13,glowingeffect:1b} 1

give @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] minecraft:wooden_sword{display:{Name:'{"text":"Worn Out Staff","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,wizardsword:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1611929717,-901955548,-1718480892,-874245086],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-496954904,661209273,-1127692879,-992232192],Slot:"mainhand"}]} 1

give @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] carrot_on_a_stick{CustomModelData:2,display:{Name:'{"text":"Lightning Staff","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a beam that strikes lightning"}','{"text":"onto enemy players and blocks."}','{"text":"Can be used every 4 seconds, and "}','{"text":"can hold up to 10 charges."}']},HideFlags:1,Unbreakable:1b,lightningstaff:1b,Enchantments:[{}]} 1

give @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Fireball Launcher","color":"red","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Contains an unlimited "}','{"text":"supply of fireballs to launch."}','{"text":"Can only shoot every 4 seconds."}','{"text":"Text will appear to indicate"}','{"text":"when it is ready."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],fireballlauncher:1b} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] armor.head with player_head{SkullOwner:{Id:[I;1816315479,-463912691,-1730839974,1499271469],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTcxNThlNTc2NzFiZWNlNTAxYmRlZjU2MzExYzBlYTYzZTE5NDYxYTg0YzViZDJiZjk0N2RhYjg0YTI0ZWVjZSJ9fX0="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] armor.chest with golden_chestplate{Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:3},{id:blast_protection,lvl:2}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] armor.legs with golden_leggings{Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:3},{id:blast_protection,lvl:2}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=6,RedKit=198}] armor.feet with golden_boots{Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:3},{id:blast_protection,lvl:3},{id:"minecraft:feather_falling",lvl:5s}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:fire_protection",lvl:3s},{id:"minecraft:blast_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;8332222,-10202020,-183647595,-7292],Slot:"head"}],SkullOwner:{Id:[I;-1942596583,-1935980410,-1214897882,507028595],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FlODIzZTFhYzc0YmNlMGZkYzM2MWYyZWM1NDk3ZDg4NDU4ZmZlZTRhN2VjMzcwM2JlMzY5Zjg2ZTI4Nzc4YiJ9fX0="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] armor.chest with golden_chestplate{Unbreakable:1b,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:3},{id:blast_protection,lvl:2},{id:"minecraft:projectile_protection",lvl:1s}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] armor.legs with golden_leggings{Unbreakable:1b,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:3},{id:blast_protection,lvl:2},{id:"minecraft:projectile_protection",lvl:1s}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] armor.feet with golden_boots{Unbreakable:1b,Enchantments:[{id:protection,lvl:2},{id:fire_protection,lvl:3},{id:blast_protection,lvl:2}]} 1

give @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] minecraft:golden_sword{display:{Name:'{"text":"Golden Cutlass","italic":false}',Lore:['{"text":"A Cutlass made out of gold. What more could you want?"}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,goldencutlass:1b,Enchantments:[{id:"minecraft:sweeping",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;1477769489,-486977938,-1348473093,353364157],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-457325784,700140189,-1812520238,-256406706],Slot:"mainhand"}]} 1

give @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Blunderbuss","color":"yellow","italic":false}',Lore:['{"text":"Shoots a blast of 8 arrows in front of you, doing lots of damage."}','{"text":"Can be used every 3 seconds."}']},Unbreakable:1b,CustomModelData:118,blunderbuss:1b} 1

give @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] gold_ingot{CustomModelData:148,display:{Name:'{"text":"Fake Money","italic":false}',Lore:['{"text":"Throw onto the ground and watch an unsuspecting enemy explode!"}']},HideFlags:1,Enchantments:[{}],fakemoneyred:1b} 1

give @a[distance=..8,team=Red,scores={Kit=7,RedKit=198}] arrow 32

item replace entity @a[distance=..8,team=Red,scores={Kit=8,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;13342,6354595,867294094,-818373849],Slot:"head"}],SkullOwner:{Id:[I;922351862,-2026683839,-1211501750,10060195],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY1NzE5MmIxOTRjNjU4YWFhODg4MTY4NDhjYmNlN2M3NDk0NjZhNzkyYjhhN2UxZDNmYWZhNDFjNDRmMzQxMiJ9fX0="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=8,RedKit=198}] armor.chest with leather_chestplate{display:{Name:"\"Wooden Chestplate\"",color:9127187},Unbreakable:1b,Enchantments:[{id:protection,lvl:2},{id:thorns,lvl:4},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=8,RedKit=198}] armor.legs with leather_leggings{display:{Name:"\"Wooden Leggings\"",color:9127187},Unbreakable:1b,Enchantments:[{id:protection,lvl:1},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"\"generic.armor\"",Amount:2,Operation:0,UUID:[I;42666293,-4567892,-22771811,92],Slot:"legs"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=8,RedKit=198}] armor.feet with leather_boots{display:{Name:"\"Wooden Boots\"",color:9127187},Unbreakable:1b,Enchantments:[{id:protection,lvl:2},{id:blast_protection,lvl:1},{id:"minecraft:projectile_protection",lvl:2s}]} 1

give @a[distance=..8,team=Red,scores={Kit=8,RedKit=198}] minecraft:iron_axe{display:{Name:'{"text":"Lumberjaxe","color":"#1A5C06","italic":false}',Lore:['{"text":"Get revenge on all the people that tried to cut you down."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 10 Attack Damage","color":"dark_green","italic":false}','{"text":" 0.7 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,lumberjaxe:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;871448782,907100199,-1496351264,-751396990],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.3,Operation:0,UUID:[I;-1440058921,-1361820466,-1680385539,537147522],Slot:"mainhand"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=9,RedKit=198}] armor.head with minecraft:player_head{Enchantments:[{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1594009242,-1524611526,-1599119141,1848200418],Slot:"head"}],SkullOwner:{Id:[I;-1507039303,-968802075,-188404,-75244524],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY4ZWExM2ZiOGYzNGU0NDdkYmFiZGNjYzhmNzMzODU1MGQ4MTk1NjEzOTQ5NWFkZTA1MWQ0ZjM4ZGQ2NjJlIn19fQ=="}]}}} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=9,RedKit=198}] armor.chest with minecraft:leather_chestplate{display:{color:2818303},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;1906673651,-1350547219,-1136865990,81490353],Slot:"chest"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=9,RedKit=198}] armor.legs with minecraft:leather_leggings{display:{color:2818303},Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1906673651,-1350547219,-113685990,814903537],Slot:"legs"}]} 1

item replace entity @a[distance=..8,team=Red,scores={Kit=9,RedKit=198}] armor.feet with minecraft:leather_boots{display:{color:2818303},Unbreakable:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:blast_protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:feather_falling",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1906673651,-1350547219,-11386590,814903537],Slot:"feet"}]} 1

give @a[distance=..8,team=Red,scores={Kit=9,RedKit=198}] minecraft:trident{display:{Name:'{"text":"Poseidon\'s Trident","color":"#00B5AF","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 8 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,poseidontrident:1b,Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:3s},{id:"minecraft:impaling",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1018290089,-1762506351,-1458388907,-179464298],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;111453944,-1834006513,-1594745056,-1194402031],Slot:"mainhand"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=10,RedKit=198}] armor.head with player_head{Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,Slot:"head"}],SkullOwner:{Id:[I;1875422177,577324483,-1208308071,1214094985],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNmMzA4MjNlOTk3NGNhNWFhYTJjMDE5MzA4Yjg0MjQ5ODQ1ZjBiOWFjYTZhYTExMTkxY2UyN2RhYzcwZTk2OCJ9fX0="}]}}} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=10,RedKit=198}] armor.chest with iron_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;2222,930112,99123764,4538293],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;99999999,-2839404,-12873794,-12123],Slot:"chest"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=10,RedKit=198}] armor.legs with iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=10,RedKit=198}] armor.feet with iron_boots{Unbreakable:1b,nokb:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:projectile_protection",lvl:1s}]} 1

give @p[distance=..8,team=Red,scores={Kit=10,RedKit=198}] carrot_on_a_stick{CustomModelData:16,display:{Name:'{"text":"Gunblade - Burst","color":"red","italic":false}',Lore:['{"text":"A gun that doubles as a blade."}','{"text":"It shoots a three round burst every 1s. You can switch"}','{"text":"between special bullets by shooting while crouching."}','{"text":"Cannot be fired if you have no ammo in your inventory."}','{"text":"To reload, simply drop the item."}','{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 7.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,gunblade:1b,switch:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.0,Operation:0,UUID:[I;-161766760,-1067038840,-1503270007,212943800],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7.5,Operation:0,UUID:[I;1725832463,-1623243755,-1879494581,-1383118150],Slot:"mainhand"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=11,RedKit=198}] armor.head with minecraft:player_head{Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-550164555,30754708,-1227168694,-2003086015],Slot:"head"}],SkullOwner:{Id:[I;1448200512,773932192,-2064052068,-324220262],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmZmNmYyYmUxNWE2Mzk0OWRiYzQ1OGRkNDEwYjE4NGYxOTAwMzQ1NTVlMWRlOTY2NWRjY2NlOWQ5YjhjMzZlYiJ9fX0="}]}}} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=11,RedKit=198}] armor.chest with minecraft:leather_chestplate{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:fire_protection",lvl:2s}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=11,RedKit=198}] armor.legs with minecraft:leather_leggings{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:fire_protection",lvl:2s}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=11,RedKit=198}] armor.feet with minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:2s}]} 1

give @p[distance=..8,team=Red,scores={Kit=11,RedKit=198}] minecraft:iron_shovel{CustomModelData:92,HideFlags:2,display:{Name:'{"text":"Frying Pan","color":"#858585","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 8.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.1 Attack Speed","color":"dark_green","italic":false}']},Unbreakable:1b,fryingpan:1b,Enchantments:[{id:"minecraft:knockback",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;577871925,-622638961,-1400912040,50299767],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8.5,Operation:0,UUID:[I;1827051760,-1581167840,-1324960273,1823471636],Slot:"mainhand"}]} 1

give @p[distance=..8,team=Red,scores={Kit=11,RedKit=198}] minecraft:carrot_on_a_stick{CustomModelData:94,display:{Name:'{"text":"Mystery Basket","color":"#FFC380","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Generates mystery foods that grant positive effects to teammates nearby."}']},Unbreakable:1b,mysterybasket:1b,Enchantments:[{}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] armor.feet with minecraft:leather_boots{display:{color:7930037},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:projectile_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;544133330,139020488,-1980544849,-1998903863],Slot:"feet"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] armor.legs with minecraft:leather_leggings{display:{color:3801175},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-699159456,1776829655,-1588879616,969981986],Slot:"legs"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Dragon Scales","color":"#6A006E","italic":false}',Lore:['{"text":"A strong chestplate made of with Dragon Scales."}'],color:0},Unbreakable:1b,dragonscales:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;528031124,541672629,-1690845220,-551697474],Slot:"chest"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] armor.head with minecraft:dragon_head{Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:blast_protection",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-814660384,-1969142993,-1353344692,-685734438],Slot:"head"}]} 1

give @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] minecraft:ghast_tear{HideFlags:2,display:{Name:'{"text":"Dragon Claw","color":"yellow","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 9 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}']},CustomModelData:108,dragonclaw:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:9,Operation:0,UUID:[I;739447273,1531596547,-1091498888,-988910221],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-2003883591,1518618278,-1378843387,295536499],Slot:"mainhand"}]} 1

give @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dragon Rush","color":"#4000A1","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Teleports you 10 blocks in the direction you\'re facing, after a brief startup."}','{"text":"Teleporting through an enemy will cause them to blow up."}']},Unbreakable:1b,CustomModelData:109,dragonrush:1b} 1

give @p[distance=..8,team=Red,scores={Kit=12,RedKit=198}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Dragon Rage","color":"#4000A1","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a weak dragon fireball in the direction you are facing."}']},Unbreakable:1b,CustomModelData:110,dragonrage:1b} 1

scoreboard players set @a[scores={Kit=12,RedKit=198}] dragonRushTimer 1

scoreboard players set @a[scores={Kit=12,RedKit=198}] dragonRageTimer 1

item replace entity @p[distance=..8,team=Red,scores={Kit=13,RedKit=198}] armor.head with minecraft:player_head{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-243047553,-1839380602,-1759517554,-973219048],Slot:"head"}],SkullOwner:{Id:[I;-537377127,1545619789,-1449981744,-516340289],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTJhMWVlODMwMjUwNmZjMzA2Nzg3NmMwYmYwNmI0OWI3MWZkNTlmM2I2ZTQ0MGQ3NmI3N2JmMDJjZmZkOTMyOSJ9fX0="}]}}} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=13,RedKit=198}] armor.chest with minecraft:leather_chestplate{Unbreakable:1b,display:{color:1644825},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-213781217,515262358,-1881617361,1518664247],Slot:"chest"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=13,RedKit=198}] armor.legs with minecraft:leather_leggings{Unbreakable:1b,display:{color:3684408},Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-2137811217,51526358,-1881617361,1518664247],Slot:"legs"}]} 1

item replace entity @p[distance=..8,team=Red,scores={Kit=13,RedKit=198}] armor.feet with minecraft:leather_boots{Unbreakable:1b,display:{color:1644825},Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:blast_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-2137811217,515262358,-188167361,1518664247],Slot:"feet"}]} 1

give @p[distance=..8,team=Red,scores={Kit=13,RedKit=198}] minecraft:stick{CustomModelData:142,HideFlags:2,display:{Name:'{"text":"Stylish Cane","color":"dark_blue","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 6 Attack Damage","color":"dark_green","italic":false}','{"text":" 1.5 Attack Speed","color":"dark_green","italic":false}']},stylishcane:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.5,Operation:0,UUID:[I;4384444,1490372978,-2026829387,-379663689]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;178083087,-2119743523,-1588529874,504382408]}]} 1

give @p[distance=..8,team=Red,scores={Kit=13,RedKit=198}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Playing Cards","color":"green","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Throws a set of 5 playing cards, with two on the side."}','{"text":"Deals damage equal to the average of the card values."}','{"text":"Also has bonus effects depending on poker hand."}']},HideFlags:4,Unbreakable:1b,CustomModelData:151,playingcards:1b} 1

scoreboard players set @a[scores={Kit=13,RedKit=198}] pCardsTimer 1

scoreboard players set @a[scores={RedKit=200..}] RedKit 0