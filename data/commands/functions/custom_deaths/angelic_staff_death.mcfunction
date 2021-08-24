loot spawn ~ -5 ~ loot commands:rng/angelic_staff_death
execute as @e[type=item,nbt={Item:{tag:{angelic_staff_death:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{angelic_staff_death:1b}}}]

execute if score #rng RNG matches 1 run tellraw @a [{"selector":"@s "},{"text":" was smited by ","color":"white"},{"selector":"@a[scores={KillP=1..}]"}]

execute if score #rng RNG matches 2 run tellraw @a [{"selector":"@s "},{"text":" was sent to heaven.","color":"white"}]

execute if score #rng RNG matches 3 run tellraw @a [{"selector":"@s "},{"text":" was blessed with a free respawn. ","color":"white"}]

scoreboard players reset #rng RNG

function commands:custom_deaths/advancement_remove