tag @s add purchase

give @s[scores={Money=1000..},tag=purchase] minecraft:iron_ingot{display:{Name:'{"text":"Illegal Modifiers","color":"#7A1414","italic":false}',Lore:['{"text":"Boosts the attack speed of your gunblade when in your offhand."}']},CustomModelData:45,illegalmodifiers:1b} 1

scoreboard players remove @s[scores={Money=1000..}] Money 1000

tag @s remove purchase