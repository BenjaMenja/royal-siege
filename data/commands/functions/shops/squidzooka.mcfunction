tag @s add purchase

give @s[tag=purchase,scores={Money=700..}] minecraft:carrot_on_a_stick{CustomModelData:47,display:{Name:'{"text":"Squidzooka","color":"#4A7AFF","italic":false}',Lore:['{"text":"Right Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Shoots explosive squids that leave behind"}','{"text":"a blindness cloud."}']},Unbreakable:1b,squidzooka:1b,Enchantments:[{}]} 1

scoreboard players set @s[tag=purchase,scores={Money=700..}] squidzookaTimer 199

scoreboard players remove @s[tag=purchase,scores={Money=700..}] Money 700

tag @s remove purchase