tag @s add purchase

give @s[tag=purchase,scores={Money=600..}] leather_boots{display:{Name:'{"text":"Bouncy Boots","italic":false}',Lore:['{"text":"A pair of boots that gives you increased jump height."}'],color:0},Unbreakable:1b,jump:1b,Enchantments:[{id:"minecraft:protection",lvl:3s}]} 1

scoreboard players remove @s[tag=purchase,scores={Money=600..}] Money 600

tag @s remove purchase