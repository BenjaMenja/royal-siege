tag @s add purchase

loot spawn ~ -5 ~ loot commands:rng/soup_of_the_day
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{soupoftheday:1b}}}}] store result score #soup RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{soupoftheday:1b}}}}]

execute if score #soup RNG matches 1 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/corn_chowder

execute if score #soup RNG matches 2 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/split_pea_soup

execute if score #soup RNG matches 3 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/chicken_noodle_soup

execute if score #soup RNG matches 4 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/tomato_soup

execute if score #soup RNG matches 5 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/french_onion_soup

scoreboard players remove @s[tag=purchase,scores={Money=400..}] Money 400

scoreboard players reset #soup RNG

tag @s remove purchase