scoreboard players set #gamemode settings 1

tellraw @a {"text":"\nA game of Team Deathmatch will be played.\n","color":"aqua"}

tellraw @s [{"text":"What map would you like to play on?","color":"green"},{"text":"\n"},{"text":"[Colosseum]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger textClick set 171"}},{"text":"     "},{"text":"[New Chicago Skyline]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger textClick set 172"}}]