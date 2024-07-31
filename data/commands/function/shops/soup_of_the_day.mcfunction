tag @s add purchase

execute store result score #soup RNG run random roll 1..12

execute if score #soup RNG matches 1 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/corn_chowder

execute if score #soup RNG matches 2..4 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/split_pea_soup

execute if score #soup RNG matches 5..7 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/chicken_noodle_soup

execute if score #soup RNG matches 8..10 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/tomato_soup

execute if score #soup RNG matches 11..12 run loot give @s[tag=purchase,scores={Money=400..}] loot commands:shop_items/french_onion_soup

scoreboard players remove @s[tag=purchase,scores={Money=400..}] Money 400

scoreboard players reset #soup RNG

tag @s remove purchase