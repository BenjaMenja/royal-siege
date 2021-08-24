tag @s add purchase

give @s[scores={Money=700..},tag=purchase] minecraft:elytra{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1343375569,-135052953,-1526275304,-750493210],Slot:"chest"}]} 1

scoreboard players remove @s[scores={Money=700..}] Money 700

tag @s remove purchase