give @s[scores={Money=900..},tag=!insured] minecraft:paper{display:{Name:'{"text":"Insurance","italic":false}',Lore:['{"text":"A proof of insurance."}','{"text":"All team members will claim new money for 100 Siege Bucks each."}','{"text":"Money that was in their inventory will still be dropped."}']},CustomModelData:144,insurance:1b} 1

scoreboard players remove @s[scores={Money=900..},tag=!insured] Money 900

execute if entity @s[team=Red,tag=!insured] run tellraw @a[team=Red] {"text":"Your gambler insured your team!","color":"aqua"}

execute if entity @s[team=Blue,tag=!insured] run tellraw @a[team=Blue] {"text":"Your gambler insured your team!","color":"aqua"}

tag @s add insured