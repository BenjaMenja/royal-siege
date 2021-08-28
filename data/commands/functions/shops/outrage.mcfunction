tag @s add purchase

give @s[tag=purchase,scores={Money=500..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Outrage","color":"#B74AFF","italic":false}',Lore:['{"text":"Right-Click to use","color":"yellow","italic":false}','{"text":" "}','{"text":"Fly into a rage, increasing your damage and speed for 8 seconds."}','{"text":"Failure to land a killing blow for the duration will stun you, hindering your movement and damage."}']},CustomModelData:111,outrage:1b} 1

scoreboard players remove @s[scores={Money=500..}] Money 500

tag @s remove purchase