scoreboard players set @s[predicate=commands:in_practice_range] ultCheck 8

scoreboard players set @s[scores={ultCheck=0}] ultCheck 8

tellraw @s[scores={ultCheck=8}] {"text":"You chose to use Tree of Life!","color":"aqua"}

tellraw @s[predicate=!commands:in_practice_range] [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action": "show_text","contents":{"text": "Chick this to ready up!"}},"clickEvent": {"action": "run_command","value": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
