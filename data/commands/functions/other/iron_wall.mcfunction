tag @s add iron_wall

execute at @s run playsound minecraft:item.trident.throw master @a[distance=..15] ~ ~ ~ 1 0

item replace entity @s armor.legs with iron_leggings{Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-132901242,391201123,58913050,883109120],Slot:"legs"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-3901230,-12817485,378121942,92213],Slot:"legs"}],ironwalllegs:1b} 1

function commands:attributes/adds/add_iron_wall_slow

effect give @s resistance 5 1 true

scoreboard players set @s ironTimer 1200