tag @s add purchase

give @a[tag=purchase,scores={Money=650..},team=Red] minecraft:carrot_on_a_stick{CustomModelData:46,display:{Name:'{"text":"Fish Cannon","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"A handheld cannon that can shoot explosive fish concentrations."}','{"text":"Can be used every 10 seconds."}','{"text":"Each fish dropped gives a specific effect when picked up by an enemy."}']},Unbreakable:1b,fishcannonred:1b,fishcannon:1b,Enchantments:[{}]} 1

give @a[tag=purchase,scores={Money=650..},team=Blue] minecraft:carrot_on_a_stick{CustomModelData:46,display:{Name:'{"text":"Fish Cannon","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"A handheld cannon that can shoot explosive fish concentrations."}','{"text":"Can be used every 10 seconds."}','{"text":"Each fish dropped gives a specific effect when picked up by an enemy."}']},Unbreakable:1b,fishcannonblue:1b,fishcannon:1b,Enchantments:[{}]} 1

scoreboard players set @s[tag=purchase,scores={Money=650..}] fishCannonTimer 1

scoreboard players remove @s[tag=purchase,scores={Money=650..}] Money 650

tag @s remove purchase

