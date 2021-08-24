loot spawn ~ -5 ~ loot commands:rng/necromantic_axe_death
execute as @e[type=item,nbt={Item:{tag:{necrodeath:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{necrodeath:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was turned into a Hatchling.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was sacrificed.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was reassembled into a tiny little dragon.","color":"white"}]

execute if score #rng RNG matches 4 run tellraw @a [{"selector":"@s "},{"text":" was hacked to bits.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove
