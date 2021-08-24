tag @s add purchase

give @s[scores={Money=900..},tag=purchase] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Exp. Bomb Blaster","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a spread of Exp. Bottles."}','{"text":"Each bottle is loaded with explosives."}']},HideFlags:4,Unbreakable:1b,CustomModelData:140,expblaster:1b} 1

scoreboard players set @s[scores={Money=900..}] expBombTimer 1

scoreboard players remove @s[scores={Money=900..}] Money 900

tag @s remove purchase