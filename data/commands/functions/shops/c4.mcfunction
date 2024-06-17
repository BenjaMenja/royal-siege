clear @s[team=Red,scores={Money=300..}] carrot_on_a_stick[custom_data~{detonatorRed:1b}]

clear @s[team=Blue,scores={Money=300..}] carrot_on_a_stick[custom_data~{detonatorBlue:1b}]

loot give @s[team=Red,scores={Money=300..}] loot commands:shop_items/c4_red

loot give @s[team=Blue,scores={Money=300..}] loot commands:shop_items/c4_blue

scoreboard players remove @s[scores={Money=300..}] Money 300