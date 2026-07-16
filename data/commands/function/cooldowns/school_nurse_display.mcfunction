data modify storage pdb:main in.cooldown_data append value {"text":"Ice Pack: ","color":"green"}
data modify storage pdb:main in.cooldown_data append value {"score":{"name":"*","objective":"icePackDis"},"color":"aqua"}
data modify storage pdb:main in.cooldown_data append value {"text": "   "}

data modify storage pdb:main in.cooldown_data append value {"text":"Resourceful: ","color":"green"}
data modify storage pdb:main in.cooldown_data append value {"score":{"name":"*","objective":"icePackPassive"},"color":"aqua"}
execute if entity @s[tag=!upgraded] run data modify storage pdb:main in.cooldown_data append value {"text":"/8"}
execute if entity @s[tag=upgraded] run data modify storage pdb:main in.cooldown_data append value {"text":"/6"}