tag @s add evolve

tag @s[nbt={Inventory:[{Slot:102b,tag:{dragonscales:1b}}]}] add noElytra

item replace entity @a[tag=noElytra] armor.chest with minecraft:elytra{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;1343375569,-135052953,-1526275304,-750493210],Slot:"chest"}]} 1

playsound entity.ender_dragon.ambient master @a[distance=..20] ~ ~ ~ 1 0

give @s firework_rocket 64

tellraw @a [{"selector":"@s"},{"text":" has evolved!"}]

clear @s carrot_on_a_stick{evolutionUlt:1b}