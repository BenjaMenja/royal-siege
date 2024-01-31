loot spawn ~ -5 ~ loot commands:rng/cinder_bomb_death
execute as @e[type=item,nbt={Item:{tag:{cinder_bomb_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{cinder_bomb_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was cooked alive.","color":"white"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" choked on some smoke.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" showered themselves in embers.","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove