loot spawn ~ -5 ~ loot commands:rng/magic_wand_death
execute as @e[type=item,nbt={Item:{tag:{magic_wand_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{magic_wand_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was erased by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was transformed into magic dust.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" vanished into nothingness.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove