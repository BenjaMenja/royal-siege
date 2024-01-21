execute store result score @s multiItems run clear @s snowball{bangsnap:1b} 0

tag @s[scores={Money=200..,multiItems=..11}] add canBuySnaps

give @s[tag=canBuySnaps,team=Red] minecraft:snowball{display:{Name:'{"text":"Bang Snap","color":"#FF763B","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"A small snap that pops when coming in contact with a surface."}','{"text":"The pop deals 4 damage to enemies in a 5 block radius and sets them on fire."}','{"text":"Can have a max of 12 of these at once."}']},CustomModelData:189,bangsnap:1b,bangsnapred:1b} 4

give @s[tag=canBuySnaps,team=Blue] minecraft:snowball{display:{Name:'{"text":"Bang Snap","color":"#FF763B","italic":false}',Lore:['{"text":"Throwable","color":"yellow","italic":false}','{"text":" "}','{"text":"A small snap that pops when coming in contact with a surface."}','{"text":"The pop deals 4 damage to enemies in a 5 block radius and sets them on fire."}','{"text":"Can have a max of 12 of these at once."}']},CustomModelData:189,bangsnap:1b,bangsnapblue:1b} 4

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball{bangsnap:1b} 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball{bangsnap:1b} 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball{bangsnap:1b} 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball{bangsnap:1b} 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball{bangsnap:1b} 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball{bangsnap:1b} 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball{bangsnap:1b} 0

execute if score @s[scores={Money=200..}] multiItems matches 13.. run clear @s snowball{bangsnap:1b} 1

execute store result score @s[scores={Money=200..}] multiItems run clear @s snowball{bangsnap:1b} 0

scoreboard players remove @s[tag=canBuySnaps] Money 200

tag @s remove canBuySnaps

