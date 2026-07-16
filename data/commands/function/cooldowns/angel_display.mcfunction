data modify storage pdb:main in.cooldown_data append value {"color":"green","text":"Healstreak: "}
execute if entity @s[team=Red] run data modify storage pdb:main in.cooldown_data append value {"color":"aqua","score":{"name":"#redHS","objective":"healstreak"}}
execute if entity @s[team=Blue] run data modify storage pdb:main in.cooldown_data append value {"color":"aqua","score":{"name":"#blueHS","objective":"healstreak"}}
data modify storage pdb:main in.cooldown_data append value {"color":"green","text":"/6"}

execute if entity @s[predicate=commands:inventory/angelic_blessing] run data modify storage pdb:main in.cooldown_data append value {"text": "   "}

execute if entity @s[predicate=commands:inventory/angelic_blessing] run data modify storage pdb:main in.cooldown_data append value {"color":"green","text":"Blessing Target: "}
execute if entity @s[predicate=commands:inventory/angelic_blessing,team=Red] run data modify storage pdb:main in.cooldown_data append value {"selector":"@a[limit=1,tag=blessed,team=Red]","color":"aqua"}
execute if entity @s[predicate=commands:inventory/angelic_blessing,team=Blue] run data modify storage pdb:main in.cooldown_data append value {"selector":"@a[limit=1,tag=blessed,team=Blue]","color":"aqua"}