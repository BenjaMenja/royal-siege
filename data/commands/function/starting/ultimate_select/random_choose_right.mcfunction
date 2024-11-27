execute if score @s Kit matches 1 run scoreboard players set @s ultCheck 12

execute if score @s Kit matches 2 run scoreboard players set @s ultCheck 11

execute if score @s Kit matches 3 run scoreboard players set @s ultCheck 13

execute if score @s Kit matches 4 run scoreboard players set @s ultCheck 14

execute if score @s Kit matches 5 run scoreboard players set @s ultCheck 15

execute if score @s Kit matches 6 run scoreboard players set @s ultCheck 16

execute if score @s Kit matches 7 run scoreboard players set @s ultCheck 17

execute if score @s Kit matches 8 run scoreboard players set @s ultCheck 18

execute if score @s Kit matches 9 run scoreboard players set @s ultCheck 19

execute if score @s Kit matches 10 run scoreboard players set @s ultCheck 20

execute if score @s Kit matches 11 run scoreboard players set @s ultCheck 22

execute if score @s Kit matches 12 run scoreboard players set @s ultCheck 24

execute if score @s Kit matches 13 run scoreboard players set @s ultCheck 26

execute if score @s Kit matches 14 run scoreboard players set @s ultCheck 28

execute if score @s Kit matches 15 run scoreboard players set @s ultCheck 30

execute if score @s Kit matches 16 run scoreboard players set @s ultCheck 32

tellraw @s {"text":"You chose to use ???!","color":"aqua"}

tellraw @s[predicate=!commands:in_practice_range] [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action": "show_text","contents":{"text": "Chick this to ready up!"}},"clickEvent": {"action": "run_command","value": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
