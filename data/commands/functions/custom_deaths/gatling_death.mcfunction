loot spawn ~ -5 ~ loot commands:rng/gatling_death
execute as @e[type=item,nbt={Item:{tag:{gatling_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{gatling_death:1b}}}]

execute if score #rng RNG matches 1 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@a[team=Red,scores={Message=1..}] "},{"text":" was mowed down by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5,Ultimate=5}]"}]

execute if score #rng RNG matches 2 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@a[team=Red,scores={Message=1..}] "},{"text":" was hosed down by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5,Ultimate=5}]"}]

execute if score #rng RNG matches 3 if entity @a[scores={Message=1..},team=Red] run tellraw @a [{"selector":"@a[team=Red,scores={Message=1..}] "},{"text":" was sprayed down by ","color":"white"},{"selector":"@a[team=Blue,scores={Kit=5,Ultimate=5}]"}]

execute if score #rng RNG matches 1 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@a[team=Blue,scores={Message=1..}] "},{"text":" was mowed down by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5,Ultimate=5}]"}]

execute if score #rng RNG matches 2 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@a[team=Blue,scores={Message=1..}] "},{"text":" was hosed down by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5,Ultimate=5}]"}]

execute if score #rng RNG matches 3 if entity @a[scores={Message=1..},team=Blue] run tellraw @a [{"selector":"@a[team=Blue,scores={Message=1..}] "},{"text":" was sprayed down by ","color":"white"},{"selector":"@a[team=Red,scores={Kit=5,Ultimate=5}]"}]

scoreboard players reset #rng RNG
