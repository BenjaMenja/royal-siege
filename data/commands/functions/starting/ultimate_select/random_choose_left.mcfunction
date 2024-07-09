execute if score @s Kit matches 1 run scoreboard players set @s ultCheck 2

execute if score @s Kit matches 2 run scoreboard players set @s ultCheck 1

execute if score @s Kit matches 3 run scoreboard players set @s ultCheck 3

execute if score @s Kit matches 4 run scoreboard players set @s ultCheck 4

execute if score @s Kit matches 5 run scoreboard players set @s ultCheck 5

execute if score @s Kit matches 6 run scoreboard players set @s ultCheck 6

execute if score @s Kit matches 7 run scoreboard players set @s ultCheck 7

execute if score @s Kit matches 8 run scoreboard players set @s ultCheck 8

execute if score @s Kit matches 9 run scoreboard players set @s ultCheck 9

execute if score @s Kit matches 10 run scoreboard players set @s ultCheck 10

execute if score @s Kit matches 11 run scoreboard players set @s ultCheck 21

execute if score @s Kit matches 12 run scoreboard players set @s ultCheck 23

execute if score @s Kit matches 13 run scoreboard players set @s ultCheck 25

execute if score @s Kit matches 14 run scoreboard players set @s ultCheck 27

execute if score @s Kit matches 15 run scoreboard players set @s ultCheck 29

tellraw @s {"text":"You chose to use ???!","color":"aqua"}

tellraw @s [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action": "show_text","contents":{"text": "Chick this to ready up!"}},"clickEvent": {"action": "run_command","value": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
