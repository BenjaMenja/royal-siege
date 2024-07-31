loot spawn ~ -5 ~ loot commands:rng/scramble
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.scramble store result score #rng RNG run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{name:"RNG"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{scramble:1b}}}}]

execute if score #rng RNG matches 1 run function commands:scramble/scramble1

execute if score #rng RNG matches 2 run function commands:scramble/scramble2

execute if score #rng RNG matches 3 run function commands:scramble/scramble3

execute if score #rng RNG matches 4 run function commands:scramble/scramble4

scoreboard players reset #rng RNG

playsound minecraft:block.slime_block.step master @s ~ ~ ~

particle item{item:"egg"} ~ ~ ~ 1 1 1 1 20 normal

tag @s remove scrambled