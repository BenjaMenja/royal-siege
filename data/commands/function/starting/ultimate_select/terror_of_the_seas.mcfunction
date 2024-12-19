scoreboard players set @s[predicate=commands:in_practice_range] ultCheck 19

scoreboard players set @s[scores={ultCheck=0}] ultCheck 19

tellraw @s[scores={ultCheck=19}] {"text":"You chose to use Terror of the Seas!","color":"aqua"}

tellraw @s[predicate=!commands:in_practice_range] [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action": "show_text","contents":{"text": "Chick this to ready up!"}},"clickEvent": {"action": "run_command","value": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
