clear @s

give @s[scores={Kit=5}] arrow{CustomModelData:12,display:{Name:"\"Archer's Infinite Arrow\""}} 1

execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=..10] ~ ~ ~ 1 2

execute at @s run playsound entity.lightning_bolt.thunder master @a[distance=..10] ~ ~ ~ 1 1

execute at @s run playsound entity.generic.drink master @s ~ ~ ~ 1 0

execute at @s run particle flash ~ ~ ~ 1 1 1 1 100 force

execute if entity @s[team=Red] run tellraw @a [{"selector":"@a[scores={Ultimate=10},team=Blue]"},{"text":" has erased "},{"selector":"@s"},{"text":"'s inventory!"}]

execute if entity @s[team=Blue] run tellraw @a [{"selector":"@a[scores={Ultimate=10},team=Red]"},{"text":" has erased "},{"selector":"@s"},{"text":"'s inventory!"}]

tag @s add wipeKill

tag @s remove mWiped

tellraw @s {"text":"You just lost your inventory! Get a kill or die to earn it back!","color":"green"}

kill @e[type=item,tag=mWipe,sort=nearest,limit=1]

