tag @s add purchase

give @a[tag=purchase,scores={Money=450..}] minecraft:cod{display:{Name:'{"text":"Fish Slapper","color":"dark_aqua","italic":false}',Lore:['{"text":"Slap your foes away!"}']},Enchantments:[{id:"minecraft:knockback",lvl:4s}]} 1

scoreboard players remove @s[tag=purchase,scores={Money=450..}] Money 450

tag @s remove purchase

