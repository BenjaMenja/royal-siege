tag @s add purchase

give @s[team=Red,tag=purchase,scores={Money=600..}] minecraft:carrot_on_a_stick{CustomModelData:103,display:{Name:'{"text":"Pay Raise","color":"gold","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a healing beam that heals teammates when hit."}','{"text":"If a teammate restores health from the beam, they will drop 1 piece of money."}','{"text":"Can be used every 15 seconds."}','{"text":"Cooldown is reduced to 5 seconds if it misses."}']},Unbreakable:1b,payraise:1b,payraisered:1b} 1

give @s[team=Blue,tag=purchase,scores={Money=600..}] minecraft:carrot_on_a_stick{CustomModelData:103,display:{Name:'{"text":"Pay Raise","color":"gold","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a healing beam that heals teammates when hit."}','{"text":"If a teammate restores health from the beam, they will drop 1 piece of money."}','{"text":"Can be used every 15 seconds."}','{"text":"Cooldown is reduced to 5 seconds if it misses."}']},Unbreakable:1b,payraise:1b,payraiseblue:1b} 1

scoreboard players set @s[tag=purchase,scores={Money=600..}] payRaiseTimer 399

scoreboard players remove @s[scores={Money=600..}] Money 600

tag @s remove purchase