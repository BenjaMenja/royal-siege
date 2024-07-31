tellraw @s[scores={Kit=1}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Cavalry Charge]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 88"}},{"text":" "},{"text":"[Rally]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 89"}}]

tellraw @s[scores={Kit=2}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Shadow Step]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 78"}},{"text":" "},{"text":"[Invisibility Cloak]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 79"}}]

tellraw @s[scores={Kit=3}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Immortality]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 74"}},{"text":" "},{"text":"[Magic Barrier]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 75"}}]

tellraw @s[scores={Kit=4}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Lifeforce]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 76"}},{"text":" "},{"text":"[Resurrection]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 77"}}]

tellraw @s[scores={Kit=5}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Chaos Bow]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 68"}},{"text":" "},{"text":"[Bow of Justice]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 69"}}]

tellraw @s[scores={Kit=6}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Kerfuffle]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 90"}},{"text":" "},{"text":"[Overcharge]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 91"}}]

tellraw @s[scores={Kit=7}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Treasure Chest]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 80"}},{"text":" "},{"text":"[Flying Dutchman]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 81"}}]

tellraw @s[scores={Kit=8}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Tree of Life]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 72"}},{"text":" "},{"text":"[Decay Aura]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 73"}}]

tellraw @s[scores={Kit=9}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Scourge of the Seas]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 82"}},{"text":" "},{"text":"[Terror of the Seas]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 83"}}]

tellraw @s[scores={Kit=10}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[System Reboot]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 86"}},{"text":" "},{"text":"[Artificial Intelligence]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 87"}}]

tellraw @s[scores={Kit=11}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Dinner's Ready]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 70"}},{"text":" "},{"text":"[Pizza Time]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 112"}}]

tellraw @s[scores={Kit=12}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Meteor Shower]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 102"}},{"text":" "},{"text":"[Evolution]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 103"}}]

tellraw @s[scores={Kit=13}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Busted]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 114"}},{"text":" "},{"text":"[Sleight of Hand]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 115"}}]

tellraw @s[scores={Kit=14}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Rocket Launch]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 151"}},{"text":" "},{"text":"[Drone]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 152"}}] 

tellraw @s[scores={Kit=15}] [{"text":"Which ultimate would you like to use?\n","color":"aqua"},{"text":"[Chrysanthemum Shell]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 178"}},{"text":" "},{"text":"[Pop Rocks]","color":"green","clickEvent":{"action":"run_command","value":"/trigger textClick set 179"}}] 

execute unless score @s Kit matches 1..15 run tellraw @s {"text":"You need to choose a character first!","color":"aqua"}