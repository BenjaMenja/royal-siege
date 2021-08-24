tag @s add purchase

give @s[tag=purchase,scores={Money=300..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Coin Gun","color":"gold","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots coins that pierce enemies."}','{"text":"Consumes 100 Siege Bucks per shot."}','{"text":"Can be used every 8 seconds."}']},HideFlags:4,Unbreakable:1b,CustomModelData:147,coingun:1b} 1

scoreboard players set @s[scores={Money=300..}] coinGunTimer 1

scoreboard players remove @s[scores={Money=300..}] Money 300

tag @s remove purchase