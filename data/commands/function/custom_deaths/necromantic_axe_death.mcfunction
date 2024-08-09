execute if entity @s[tag=custom_death] run return -1

tag @s add custom_death

execute store result score #rng RNG run random roll 1..4

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s"},{"text":" was turned into a Hatchling.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s"},{"text":" was sacrificed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s"},{"text":" was reassembled into a tiny little dragon.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s"},{"text":" was hacked to bits.","color":"white"}]

execute on attacker if entity @s[scores={Kit=7}] if entity @a[advancements={commands:custom_deaths/necromantic_axe_death=true},scores={Kit=12}] run advancement grant @s only commands:hidden_advancements/draconic_violation

execute at @s[team=Red] run summon minecraft:zombie ~ ~ ~ {Silent:1b,Team:"Blue",Health:20f,IsBaby:1b,Tags:["hatchlingblue","hatchling"],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16711680}},{id:"minecraft:dragon_head",count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],attributes:[{id:"minecraft:generic.attack_damage",base:8},{id:"minecraft:generic.follow_range",base:99},{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.movement_speed",base:0.25}]}

execute at @s[team=Blue] run summon minecraft:zombie ~ ~ ~ {Silent:1b,Team:"Red",Health:20f,IsBaby:1b,Tags:["hatchlingred","hatchling"],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":0}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":255}},{id:"minecraft:dragon_head",count:1}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],attributes:[{id:"minecraft:generic.attack_damage",base:8},{id:"minecraft:generic.follow_range",base:99},{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.movement_speed",base:0.25}]}

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
