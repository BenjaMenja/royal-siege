execute if entity @s[tag=!upgraded] run item replace entity @s hotbar.8 with gunpowder{CustomModelData:14,display:{Name:'{"text":"Gunblade Ammo","color":"gray","italic":false}',Lore:['{"text":"Ammo for the Gunblade."}']},gunbladeammo:1b,Enchantments:[{}]} 15

execute if entity @s[tag=upgraded] run item replace entity @s hotbar.8 with gunpowder{CustomModelData:14,display:{Name:'{"text":"Gunblade Ammo","color":"gray","italic":false}',Lore:['{"text":"Ammo for the Gunblade."}']},gunbladeammo:1b,Enchantments:[{}]} 20

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

tag @s remove reloading

scoreboard players reset @s reload