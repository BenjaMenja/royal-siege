execute if entity @s[tag=RedChest] run fill ~ ~ ~ ~ ~ ~ minecraft:chest{LootTable:"commands:chests/treasure_chest_red"} replace air

execute if entity @s[tag=BlueChest] run fill ~ ~ ~ ~ ~ ~ minecraft:chest{LootTable:"commands:chests/treasure_chest_blue"} replace air

execute if entity @s[tag=RedChest] unless block ~ ~ ~ chest run fill ~ ~1 ~ ~ ~1 ~ minecraft:chest{LootTable:"commands:chests/treasure_chest_red"} replace air

execute if entity @s[tag=BlueChest] unless block ~ ~ ~ chest run fill ~ ~1 ~ ~ ~1 ~ minecraft:chest{LootTable:"commands:chests/treasure_chest_blue"} replace air

tag @s add placed

