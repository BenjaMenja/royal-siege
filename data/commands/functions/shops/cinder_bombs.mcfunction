execute store result score @s multiItems run clear @s snowball{cinderbomb:1b} 0

tag @s[scores={Money=350..,multiItems=..3}] add canBuyCinderBomb

give @s[tag=canBuyCinderBomb,team=Red] minecraft:snowball{display:{Name:'{"text":"Cinder Bomb","color":"#B50006","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"A modified smoke bomb that can be thrown to spawn a blinding smoke cloud."}','{"text":"Deals 2 damage per second while enemies are within it."}','{"text":"Deals double damage and slows burning targets by 8%."}','{"text":"Can have a maximum of 4 at once."}']},CustomModelData:192,cinderbomb:1b,cinderbombred:1b} 2

give @s[tag=canBuyCinderBomb,team=Blue] minecraft:snowball{display:{Name:'{"text":"Cinder Bomb","color":"#B50006","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"A modified smoke bomb that can be thrown to spawn a blinding smoke cloud."}','{"text":"Deals 2 damage per second while enemies are within it."}','{"text":"Deals double damage and slows burning targets by 8%."}','{"text":"Can have a maximum of 4 at once."}']},CustomModelData:192,cinderbomb:1b,cinderbombblue:1b} 2

execute store result score @s[scores={Money=350..}] multiItems run clear @s snowball{cinderbomb:1b} 0

execute if score @s[scores={Money=350..}] multiItems matches 5.. run clear @s snowball{cinderbomb:1b} 1

execute store result score @s[scores={Money=350..}] multiItems run clear @s snowball{cinderbomb:1b} 0

execute if score @s[scores={Money=350..}] multiItems matches 5.. run clear @s snowball{cinderbomb:1b} 1

execute store result score @s[scores={Money=350..}] multiItems run clear @s snowball{cinderbomb:1b} 0

scoreboard players remove @s[tag=canBuyCinderBomb] Money 350

tag @s remove canBuyCinderBomb

