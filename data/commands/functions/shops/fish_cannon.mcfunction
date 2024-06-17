loot give @a[scores={Money=650..},team=Red] loot commands:shop_items/fish_cannon_red

loot give @a[scores={Money=650..},team=Blue] loot commands:shop_items/fish_cannon_blue

scoreboard players set @s[scores={Money=650..}] fishCannonTimer 1

scoreboard players remove @s[scores={Money=650..}] Money 650

