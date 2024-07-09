scoreboard players set @s[scores={ultCheck=0}] ultCheck 3

tellraw @s[scores={ultCheck=3}] {"text":"You chose to use Immortality!","color":"aqua"}

tellraw @s [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hoverEvent":{"action": "show_text","contents":{"text": "Chick this to ready up!"}},"clickEvent": {"action": "run_command","value": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
