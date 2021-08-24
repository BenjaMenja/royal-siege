loot spawn ~ -5 ~ loot commands:rng/scramble
execute as @e[type=item,nbt={Item:{tag:{scramble:1b}}}] store result score #rng RNG run data get entity @s Item.tag.AttributeModifiers.[{}].Amount
kill @e[type=item,nbt={Item:{tag:{scramble:1b}}}]

execute if score #rng RNG matches 1 run function commands:scramble/scramble1

execute if score #rng RNG matches 2 run function commands:scramble/scramble2

execute if score #rng RNG matches 3 run function commands:scramble/scramble3

execute if score #rng RNG matches 4 run function commands:scramble/scramble4

scoreboard players reset #rng RNG