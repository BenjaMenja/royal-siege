execute if entity @s[scores={Kit=1}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Warrior","color":"gray"}]

execute if entity @s[scores={Kit=2}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Ninja","color":"dark_gray"}]

execute if entity @s[scores={Kit=3}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Guardian","color":"gold"}]

execute if entity @s[scores={Kit=4}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Angel","color":"light_purple"}]

execute if entity @s[scores={Kit=5}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Archer","color":"dark_green"}]

execute if entity @s[scores={Kit=6}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Wizard","color":"blue"}]

execute if entity @s[scores={Kit=7}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Pirate","color":"yellow"}]

execute if entity @s[scores={Kit=8}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Ent","color":"green"}]

execute if entity @s[scores={Kit=9}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Poseidon","color":"aqua"}]

execute if entity @s[scores={Kit=10}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Robot","color":"gray"}]

execute if entity @s[scores={Kit=11}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Chef","color":"red"}]

execute if entity @s[scores={Kit=12}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Dragon","color":"#5A027A"}]

execute if entity @s[scores={Kit=13}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Gambler","color":"#FFD60A"}]

execute if entity @s[scores={Kit=14}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Astronaut","color":"#BAAEA2"}]

execute if entity @s[scores={Kit=15}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"Firecracker","color":"#FFAD08"}]

execute if entity @s[scores={Kit=16}] run tellraw @a [{"selector":"@s"},{"text":" - ","color":"aqua"},{"text":"School Nurse","color":"#da5a5a"}]

tag @s add namePrinted

execute as @a[team=Red,tag=!namePrinted,limit=1] run function commands:starting/red_team_print