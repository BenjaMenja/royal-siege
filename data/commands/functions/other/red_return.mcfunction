give @s[team=Red,scores={Kit=6}] carrot_on_a_stick{CustomModelData:2,display:{Name:'{"text":"Lightning Staff","color":"aqua","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots a beam that strikes lightning"}','{"text":"onto enemy players and blocks."}','{"text":"Gains a charge every 6 seconds, and "}','{"text":"can hold up to 8 charges."}']},HideFlags:1,Unbreakable:1b,lightningstaff:1b,Enchantments:[{}]} 1

execute if score #gamemode settings matches 0 if score #classicMap settings matches 0 run tp @s[team=Red] 9 57 -195 0 0

execute if score #gamemode settings matches 0 if score #classicMap settings matches 1 run tp @s[team=Red] 139 60 -1004 90 0