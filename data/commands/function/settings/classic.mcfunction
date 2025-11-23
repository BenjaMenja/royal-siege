scoreboard players set #gamemode settings 0

tellraw @a {"text":"\nA classic game of Royal Siege will be played.\n","color":"aqua"}

tellraw @s [{"text":"What map would you like to play on?","color":"green"},{"text":"\n"},{"text":"[Forest Glen]","color":"aqua","click_event":{"action":"run_command","command":"/trigger textClick set 143"}},{"text":"   "},{"text":"[Winterland]","color":"aqua","click_event":{"action":"run_command","command":"/trigger textClick set 144"}},{"text":"   "},{"text":"[Colliding Tides]","color":"aqua","click_event":{"action":"run_command","command":"/trigger textClick set 66"}}]