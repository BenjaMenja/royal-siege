summon armor_stand ~ ~29 ~ {Invulnerable:1b,Invisible:1b,Tags:["Chest"]}

execute if entity @s[tag=TRed] run summon falling_block ~ ~30 ~ {BlockState:{Name:"minecraft:chest",Properties:{facing:"north"}},TileEntityData:{Lock:"Golden Cutlass",LootTable:"commands:chests/treasure_chest_red"},Time:1,HurtEntities:1b,FallHurtMax:60,FallHurtAmount:2f,Tags:["FallingChest"]}

execute if entity @s[tag=TBlue] run summon falling_block ~ ~30 ~ {BlockState:{Name:"minecraft:chest",Properties:{facing:"north"}},TileEntityData:{Lock:"Golden Cutlass",LootTable:"commands:chests/treasure_chest_blue"},Time:1,HurtEntities:1b,FallHurtMax:60,FallHurtAmount:2f,Tags:["FallingChest"]}

execute if entity @s[tag=TRed] run tellraw @a [{"selector":"@a[team=Red,scores={Ultimate=7}]"},{"text":" uncovered a Treasure Chest!"}]

execute if entity @s[tag=TBlue] run tellraw @a [{"selector":"@a[team=Blue,scores={Ultimate=7}]"},{"text":" uncovered a Treasure Chest!"}]

execute if entity @s[tag=TRed] run scoreboard players add @a[team=Red,scores={Ultimate=7}] ultsUsed 1

execute if entity @s[tag=TBlue] run scoreboard players add @a[team=Blue,scores={Ultimate=7}] ultsUsed 1

tp @s ~ -200 ~