scoreboard players set @s[predicate=commands:location/practice_range/in_practice_range] ultCheck 7

scoreboard players set @s[scores={ultCheck=0}] ultCheck 7

tellraw @s[scores={ultCheck=7}] {"text":"You chose to use Treasure Chest!","color":"aqua"}

tellraw @s[predicate=!commands:location/practice_range/in_practice_range] [{"text":"\nNow that you've chosen a character, ","color":"aqua"},{"text":"[Click Here]","color":"green","hover_event":{"action": "show_text","value":{"text": "Chick this to ready up!"}},"click_event": {"action": "run_command","command": "/trigger textClick set 127"}},{"text":" to ready up!","color":"aqua"}]
