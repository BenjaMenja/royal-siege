tag @s add purchase

give @s[team=Red,tag=purchase,scores={Money=700..}] minecraft:carrot_on_a_stick{CustomModelData:102,display:{Name:'{"text":"Scrambled Eggs","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a scrambling egg."}','{"text":"Scrambles up an enemy\'s hotbar when hit."}']},Unbreakable:1b,scrambledeggs:1b,scrambledeggsred:1b} 1

give @s[team=Blue,tag=purchase,scores={Money=700..}] minecraft:carrot_on_a_stick{CustomModelData:102,display:{Name:'{"text":"Scrambled Eggs","color":"yellow","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a scrambling egg."}','{"text":"Scrambles up an enemy\'s hotbar when hit."}']},Unbreakable:1b,scrambledeggs:1b,scrambledeggsblue:1b} 1

scoreboard players set @s[tag=purchase,scores={Money=700..}] scrambleTimer 499

scoreboard players remove @s[scores={Money=700..}] Money 700

tag @s remove purchase