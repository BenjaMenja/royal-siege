tag @s add purchase

give @s[tag=purchase,scores={Money=1000..}] carrot_on_a_stick{CustomModelData:29,display:{Name:'{"text":"Chain Hook","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Click on an enemy within 15 blocks"}','{"text":"to drag them towards you, slowing"}','{"text":"them in the process."}']},HideFlags:1,Unbreakable:1b,Enchantments:[{}],chainhook:1b} 1

scoreboard players set @s[scores={Money=1000..}] cHookCD 0

scoreboard players remove @s[scores={Money=1000..}] Money 1000

tag @s remove purchase