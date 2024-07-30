execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

loot spawn ~ -5 ~ loot commands:rng/necromantic_axe_death
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.necrodeath store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{necrodeath:1b}}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was turned into a Hatchling.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was sacrificed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was reassembled into a tiny little dragon.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was hacked to bits.","color":"white"}]

execute if entity @a[scores={KillP=1..,Kit=7}] if entity @s[scores={Kit=12}] run advancement grant @a[scores={KillP=1..,Kit=7}] only commands:hidden_advancements/draconic_violation

execute at @s[team=Red] run summon minecraft:zombie ~ ~ ~ {Silent:1b,Team:"Blue",Health:20f,IsBaby:1b,Tags:["hatchlingblue","hatchling"],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}},{id:"minecraft:dragon_head",count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:8},{Name:generic.follow_range,Base:99},{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.25}]}

execute at @s[team=Blue] run summon minecraft:zombie ~ ~ ~ {Silent:1b,Team:"Red",Health:20f,IsBaby:1b,Tags:["hatchlingred","hatchling"],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":255}},{id:"minecraft:dragon_head",count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:8},{Name:generic.follow_range,Base:99},{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.25}]}

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
