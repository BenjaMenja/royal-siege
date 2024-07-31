loot give @s[scores={Money=900..},tag=!insured] loot commands:shop_items/insurance

scoreboard players remove @s[scores={Money=900..},tag=!insured] Money 900

execute if entity @s[team=Red,tag=!insured] run tellraw @a[team=Red] {"text":"Your gambler insured your team!","color":"aqua"}

execute if entity @s[team=Blue,tag=!insured] run tellraw @a[team=Blue] {"text":"Your gambler insured your team!","color":"aqua"}

tag @s add insured