tag @s add purchase

give @s[scores={Money=750..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Crystal Cannon","color":"#BB00FF","italic":false}',Lore:['{"text":"Shoots a small end crystal that transforms into a large one when it comes in contact with a surface."}','{"text":"The end crystal charges for 3 seconds, after which it explodes in a huge radius, damaging everything nearby."}']},Unbreakable:1b,CustomModelData:113,crystalcannon:1b} 1

scoreboard players set @s[scores={Money=750..}] cCannonTimer 1

scoreboard players remove @s[scores={Money=750..}] Money 750

tag @s remove purchase