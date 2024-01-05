tag @s add purchase

scoreboard players set @s[scores={Money=350..},tag=!charged] LightningTimer 960

tellraw @s[tag=purchase,scores={Money=350..},tag=!charged] {"text":"Your weapons are charged up.","color":"aqua"}

tag @s[scores={Money=350..},tag=purchase,tag=!charged] add charged

scoreboard players remove @s[scores={Money=350..},tag=charged] Money 350

tag @s remove purchase