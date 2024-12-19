
scoreboard players set @s[predicate=commands:in_practice_range] ultCheck 2
scoreboard players set @s[scores={ultCheck=0}] ultCheck 2

tellraw @s[scores={ultCheck=2}] {"text":"You chose to use Cavalry Charge!","color":"aqua"}

tellraw @s[predicate=!commands:in_practice_range] [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action": "show_text","contents":{"text": "Chick this to ready up!"}},"clickEvent": {"action": "run_command","value": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
